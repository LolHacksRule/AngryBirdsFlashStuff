package §3C§
{
   import § !Y§.§&$§;
   import §0N§.§0!g§;
   import §5X§.§+!#§;
   import §7!0§.§3!d§;
   import §7!0§.§8!B§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   import §77§.§&!>§;
   import §<"8§.§6!c§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §9!d§ extends §9!;§
   {
      
      private static var §5""§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §5""§ = §9![§;
         }
      }
      
      private var §94§:String = "";
      
      private var §]"C§:String = "";
      
      private var §+"<§:§8!B§;
      
      public function §9!d§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §>"2§ = true;
         }
         while(true)
         {
            §1"$§ = true;
            while(!_loc2_)
            {
               super(§1#§.§,!"§,§8"6§.§ K§,§0!g§.§[!y§(§5""§));
               do
               {
                  this.§+"<§ = new §8!B§();
               }
               while(_loc2_);
               
               if(!(_loc2_ && _loc2_))
               {
                  return;
               }
            }
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.init();
            loop0:
            while(true)
            {
               this.updateTextFields();
               loop1:
               while(true)
               {
                  this.§;"E§();
                  loop2:
                  while(true)
                  {
                     (§[S§.getItemByName("TextField_TypeCodeHere") as §&!>§).§ !'§.maxChars = 12;
                     loop3:
                     while(true)
                     {
                        §§push(this.§+"<§);
                        loop4:
                        while(true)
                        {
                           §§push(§3!d§.§+T§);
                           loop5:
                           while(true)
                           {
                              §§pop().addEventListener(§§pop(),this.§1" §);
                              loop6:
                              while(true)
                              {
                                 §§push(this.§+"<§);
                                 loop7:
                                 while(!_loc2_)
                                 {
                                    §§push(§3!d§.§!e§);
                                    while(true)
                                    {
                                       §§pop().addEventListener(§§pop(),this.§?!3§);
                                       addr121:
                                       while(_loc1_)
                                       {
                                          if(_loc1_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop1;
                                       }
                                       continue loop3;
                                       addr75:
                                       if(_loc2_ && _loc1_)
                                       {
                                          continue;
                                       }
                                       §§pop().addEventListener(§§pop(),this.§%b§);
                                       loop13:
                                       while(_loc1_)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop6;
                                          }
                                          (§ !g§.§;!'§ as §`Y§).§&,§.§""8§(false);
                                          while(!_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                §3!+§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§6!h§);
                                                if(_loc1_ || _loc2_)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      return;
                                                   }
                                                   continue loop13;
                                                }
                                                continue;
                                                continue;
                                             }
                                             continue loop2;
                                          }
                                          loop12:
                                          while(true)
                                          {
                                             §§push(this.§+"<§);
                                             if(!_loc2_)
                                             {
                                                if(!_loc1_)
                                                {
                                                   continue loop7;
                                                }
                                                §§push(§3!d§.§9!v§);
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   §§goto(addr75);
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(§3!d§.§-l§);
                                                   continue loop12;
                                                }
                                                addr103:
                                             }
                                             while(!_loc2_)
                                             {
                                                §§pop().addEventListener(§§pop(),this.§21§);
                                                continue loop12;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       §§goto(addr121);
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = null;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc5_:* = §§pop();
            if(_loc7_)
            {
               if("CLOSE" === _loc5_)
               {
                  if(!(_loc6_ && param3))
                  {
                     §§push(0);
                     if(_loc6_)
                     {
                        addr134:
                     }
                  }
                  else
                  {
                     addr116:
                     §§push(2);
                     if(_loc7_ || param2)
                     {
                        §§goto(addr134);
                     }
                  }
                  addr139:
                  loop4:
                  switch(§§pop())
                  {
                     case 0:
                        close();
                        break loop0;
                        addr77:
                     case 1:
                        §§push((§[S§.getItemByName("TextField_TypeCodeHere") as §&!>§).§ !'§.text);
                        if(!_loc6_)
                        {
                           _loc4_ = §§pop();
                           while(true)
                           {
                              addr40:
                              while(true)
                              {
                                 this.§+"<§.§6!L§(_loc4_);
                                 break loop4;
                              }
                           }
                        }
                        continue;
                     case 2:
                        §6!c§.§?!6§("displayFAQ");
                        if(!_loc6_)
                        {
                           if(!_loc6_)
                           {
                              if(_loc7_ || this)
                              {
                                 if(true)
                                 {
                                    break loop0;
                                 }
                                 §§goto(addr40);
                              }
                              else
                              {
                                 §§goto(addr77);
                              }
                           }
                           break;
                        }
                  }
                  continue loop2;
               }
               if("SUBMIT_CODE" === _loc5_)
               {
                  if(_loc7_)
                  {
                     addr104:
                     §§push(1);
                     if(_loc7_ || param1)
                     {
                     }
                  }
                  else
                  {
                     §§goto(addr116);
                  }
               }
               else if("CODE_FAQ" === _loc5_)
               {
                  §§goto(addr116);
               }
               else
               {
                  §§push(3);
               }
               §§goto(addr139);
            }
            §§goto(addr104);
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§+"<§);
            loop0:
            while(true)
            {
               §§push(§3!d§.§+T§);
               addr153:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§1" §);
               }
               loop3:
               while(true)
               {
                  if(_loc3_ && _loc3_)
                  {
                     continue loop0;
                  }
                  §§push(§3!d§.§!e§);
                  while(!_loc3_)
                  {
                     §§pop().removeEventListener(§§pop(),this.§?!3§);
                     while(true)
                     {
                        §§push(this.§+"<§);
                        loop6:
                        while(true)
                        {
                           §§push(§3!d§.§-l§);
                           addr117:
                           while(true)
                           {
                              §§pop().removeEventListener(§§pop(),this.§21§);
                              continue loop6;
                           }
                        }
                        loop10:
                        while(_loc4_ || param2)
                        {
                           (§ !g§.§;!'§ as §`Y§).§&,§.§""8§(true);
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 if(_loc3_ && param1)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop10;
                           }
                           while(true)
                           {
                              continue loop3;
                           }
                        }
                     }
                     if(_loc3_ && _loc3_)
                     {
                        continue;
                     }
                     §§pop().removeEventListener(§§pop(),this.§%b§);
                     §§goto(addr111);
                  }
                  §§goto(addr153);
               }
            }
         }
         §§goto(addr156);
      }
      
      override public function updateTextFields() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§]"C§ == this.§94§)
            {
               while(true)
               {
                  this.§]"C§ = "";
                  addr124:
                  while(true)
                  {
                  }
               }
               addr121:
            }
            loop2:
            while(true)
            {
               §&$§.§[!1§.updateTextFields(§[S§,"EnterCode_Popup");
               loop3:
               while(true)
               {
                  if(!(§[S§.getItemByName("TextField_TypeCodeHere") as §&!>§).§ !'§.hasEventListener(MouseEvent.MOUSE_DOWN))
                  {
                     while(true)
                     {
                        (§[S§.getItemByName("TextField_TypeCodeHere") as §&!>§).§ !'§.addEventListener(MouseEvent.MOUSE_DOWN,this.§ !$§);
                        addr89:
                        while(_loc2_ || _loc2_)
                        {
                           if(_loc1_)
                           {
                              §§goto(addr121);
                           }
                        }
                        continue loop2;
                     }
                     addr78:
                  }
                  loop6:
                  while(true)
                  {
                     this.§94§ = (§[S§.getItemByName("TextField_TypeCodeHere") as §&!>§).§ !'§.text;
                     while(!_loc1_)
                     {
                        this.§;"E§();
                        if(!(_loc2_ || this))
                        {
                           continue;
                        }
                        if(!(_loc1_ && this))
                        {
                           if(!_loc1_)
                           {
                              break loop6;
                           }
                           §§goto(addr78);
                        }
                        §§goto(addr89);
                     }
                     continue loop3;
                  }
               }
            }
         }
      }
      
      private function §6P§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§]"C§ = (§[S§.getItemByName("TextField_TypeCodeHere") as §&!>§).§ !'§.text;
            loop0:
            while(true)
            {
               (§[S§.getItemByName("TextField_TypeCodeHere") as §&!>§).§ !'§.text = param1;
               loop1:
               while(true)
               {
                  if(_loc3_)
                  {
                     if(param1 != "")
                     {
                        if(!_loc2_)
                        {
                           continue;
                        }
                        addr95:
                        while(true)
                        {
                           (§[S§.getItemByName("TextField_TypeCodeHere") as §&!>§).§ !'§.setSelection(0,param1.length);
                           while(!(_loc2_ && _loc2_))
                           {
                              (§[S§.getItemByName("TextField_TypeCodeHere") as §&!>§).§ !'§.addEventListener(MouseEvent.MOUSE_DOWN,this.§ !$§);
                              if(_loc3_ || _loc2_)
                              {
                                 break loop1;
                              }
                           }
                        }
                     }
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr95);
      }
      
      private function §1" §(param1:§3!d§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            dispatchEvent(new §3!d§(§3!d§.§+T§));
         }
         do
         {
            close();
         }
         while(!(_loc3_ || param1));
         
      }
      
      private function §?!3§(param1:§3!d§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(§&$§.§[!1§.§^!2§() != "en")
            {
               this.§6P§("Código ya utilizado");
               if(!(_loc2_ && _loc2_))
               {
                  if(!_loc3_)
                  {
                     addr70:
                     this.§6P§("Code already used");
                     addr73:
                  }
                  return;
               }
               §§goto(addr73);
            }
         }
         §§goto(addr70);
      }
      
      private function §21§(param1:§3!d§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§&$§.§[!1§.§^!2§() != "en")
            {
               this.§6P§("Código incorrecto");
               if(!(_loc2_ && _loc3_))
               {
                  if(_loc2_)
                  {
                     addr65:
                     this.§6P§("Incorrect code");
                     addr68:
                  }
                  else
                  {
                     addr49:
                  }
                  return;
               }
               §§goto(addr68);
            }
            §§goto(addr65);
         }
         §§goto(addr49);
      }
      
      private function §%b§(param1:§3!d§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§6P§(this.§94§);
         }
      }
      
      private function § !$§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            (§[S§.getItemByName("TextField_TypeCodeHere") as §&!>§).§ !'§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§ !$§);
            loop0:
            while(true)
            {
               §§push(this.§]"C§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == this.§94§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(§§pop());
                              loop21:
                              while(_loc3_)
                              {
                                 if(!§§pop())
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§pop();
                                       loop8:
                                       while(!_loc2_)
                                       {
                                          §§push(this.§]"C§);
                                          loop9:
                                          for(; _loc3_ || _loc2_; if(_loc2_ && _loc2_)
                                          {
                                             continue;
                                          },§§goto(addr52))
                                          {
                                             §§push(§§pop() == "Código incorrecto");
                                             while(true)
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop12:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop13:
                                                         while(_loc3_)
                                                         {
                                                            §§pop();
                                                            loop14:
                                                            while(true)
                                                            {
                                                               §§push(this.§]"C§);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() == "Code already used");
                                                                  if(!(_loc2_ && this))
                                                                  {
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           if(!(_loc3_ || this))
                                                                           {
                                                                              break;
                                                                              addr119:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue loop21;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          addr65:
                                                                                          if(_loc2_ && param1)
                                                                                          {
                                                                                             continue loop14;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             this.§]"C§ = "";
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                       addr75:
                                                                                    }
                                                                                    addr29:
                                                                                    while(true)
                                                                                    {
                                                                                       §[S§.setText(this.§]"C§,"TextField_TypeCodeHere");
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§goto(addr75);
                                                                                    }
                                                                                    return;
                                                                                 }
                                                                                 addr61:
                                                                              }
                                                                           }
                                                                           continue loop21;
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  while(!_loc2_)
                                                                  {
                                                                     §§pop();
                                                                     §§push(§§pop() == "Código ya utilizado");
                                                                     continue loop14;
                                                                     if(!(_loc3_ || param1))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr61);
                                                                  }
                                                                  §§push(this.§]"C§);
                                                                  addr143:
                                                                  continue loop7;
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                               }
                                                               continue loop2;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            break loop8;
                                                         }
                                                         addr194:
                                                      }
                                                      §§goto(addr119);
                                                   }
                                                }
                                             }
                                          }
                                          continue loop1;
                                       }
                                       while(true)
                                       {
                                          §§push(this.§]"C§);
                                          continue loop1;
                                       }
                                    }
                                    addr182:
                                 }
                                 §§goto(addr156);
                              }
                              continue loop3;
                           }
                           addr177:
                        }
                        §§goto(addr194);
                     }
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      private function §#I§(param1:TextField) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Rectangle = param1.getCharBoundaries(0);
         var _loc3_:Rectangle = param1.getCharBoundaries(param1.length - 1);
         §§push(_loc3_.x + _loc3_.width - _loc2_.x);
         if(!_loc4_)
         {
            return §§pop() + _loc2_.width / 2;
         }
      }
      
      public function §;"E§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:TextField = §[S§.getItemByName("Button_CodeInstructions").mClip.text;
         var _loc2_:MovieClip = §[S§.getItemByName("Button_CodeInstructions").mClip.MovieClip_Code_Underline;
         var _loc3_:MovieClip = §[S§.getItemByName("Button_CodeInstructions").mClip.MouseHitArea;
         if(_loc5_ || this)
         {
            _loc2_.width = this.§#I§(_loc1_);
         }
         do
         {
            _loc3_.width = _loc2_.width;
            do
            {
               this.§45§(_loc1_);
            }
            while(_loc4_);
            
         }
         while(!_loc5_);
         
      }
      
      private function §45§(param1:TextField) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TextFormat = new TextFormat();
         if(!(_loc4_ && param1))
         {
            _loc2_.italic = true;
         }
         do
         {
            param1.setTextFormat(_loc2_);
         }
         while(!_loc3_);
         
      }
      
      private function §6!h§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:String = (§[S§.getItemByName("TextField_TypeCodeHere") as §&!>§).§ !'§.text;
         var _loc3_:TextField = (§[S§.getItemByName("TextField_TypeCodeHere") as §&!>§).§ !'§;
         if(!(_loc5_ && _loc3_))
         {
            §§push(_loc2_ == "");
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr104:
                     while(true)
                     {
                        §§push(param1.target == _loc3_);
                        if(!(_loc5_ && _loc2_))
                        {
                           if(!_loc4_)
                           {
                              continue loop0;
                           }
                           §§push(!§§pop());
                        }
                        if(!(_loc4_ || param1))
                        {
                           continue;
                        }
                     }
                  }
               }
               while(§§pop())
               {
                  if(!_loc5_)
                  {
                     if(_loc4_)
                     {
                        this.§6P§(this.§94§);
                     }
                     else
                     {
                        §§goto(addr104);
                     }
                  }
                  break;
               }
               return;
            }
         }
         §§goto(addr104);
      }
   }
}
