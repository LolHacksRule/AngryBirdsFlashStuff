package §8!E§
{
   import §!"W§.§@!X§;
   import §!"e§.§`"W§;
   import §"O§.§^#]§;
   import §'y§.§^!B§;
   import §+!c§.§5" §;
   import §+D§.§ #^§;
   import §+D§.§0"$§;
   import §+D§.§^"m§;
   import §,"N§.§6"w§;
   import §,"N§.§@#B§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §;! §.§!Z§;
   import §;"Y§.§1"z§;
   import §<w§.§6#'§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import §^#>§.§8"f§;
   import com.angrybirds.§,!q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §"!#§ extends EventDispatcher
   {
      
      public static const §9"9§:String = "mighty_eagle_used";
      
      public static const §0!M§:String = "hide_complete";
      
      public static const §<!§:String = "show_complete";
      
      private static const §;"s§:String = "infinite";
      
      private static const § "!§:String = "normal";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §9"9§ = "mighty_eagle_used";
            loop0:
            while(true)
            {
               §0!M§ = "hide_complete";
               loop1:
               while(true)
               {
                  §<!§ = "show_complete";
                  while(true)
                  {
                     §;"s§ = "infinite";
                     loop3:
                     while(!(_loc1_ && §"!#§))
                     {
                        continue loop1;
                        while(true)
                        {
                           § "!§ = "normal";
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      protected var §%8§:§[#R§;
      
      protected var §"!A§:Boolean;
      
      protected var §&A§:Boolean;
      
      protected var §;"w§:Boolean;
      
      protected var §=#=§:§ #^§;
      
      protected var §9"3§:§^"m§;
      
      protected var §'">§:§0"$§;
      
      protected var §4j§:§5" §;
      
      protected var §?#Y§:MovieClip;
      
      protected var §[!+§:§6"w§;
      
      protected var §4#J§:§@#B§;
      
      protected var §try§:§^#]§;
      
      protected var §]!=§:String;
      
      public function §"!#§(param1:§ #^§, param2:§^#]§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super();
            while(true)
            {
               this.init(param1);
               §§goto(addr71);
            }
         }
         addr71:
         while(true)
         {
            this.§try§ = param2;
            if(_loc3_ || param2)
            {
               if(_loc3_ || _loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get visible() : Boolean
      {
         return this.§"!A§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§"!A§ = param1;
         }
         do
         {
            this.refresh();
         }
         while(_loc2_ && this);
         
      }
      
      public function set enabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§&A§ = param1;
            do
            {
               this.refresh();
            }
            while(!_loc3_);
            
         }
      }
      
      public function get enabled() : Boolean
      {
         return this.§&A§;
      }
      
      public function set active(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§;"w§ = param1;
            do
            {
               this.refresh();
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      public function get active() : Boolean
      {
         return this.§;"w§;
      }
      
      protected function init(param1:§ #^§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§=#=§ = param1;
            if(!_loc4_)
            {
               this.§"!A§ = true;
               loop0:
               while(true)
               {
                  this.§;"w§ = true;
                  if(!(_loc4_ && param1))
                  {
                     while(true)
                     {
                        this.§]!=§ = §6"w§.§+!G§;
                        if(_loc4_ && this)
                        {
                           break loop0;
                        }
                        this.§9"3§ = §^"m§(param1.getItemByName("Button_MightyEagle"));
                        loop8:
                        while(true)
                        {
                           this.§'">§ = §0"$§(param1.getItemByName("MovieClip_GetMore"));
                           loop9:
                           while(true)
                           {
                              §§push(this.§'">§);
                              loop10:
                              while(true)
                              {
                                 §§pop().mClip.gotoAndStop(1);
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    break;
                                 }
                                 if(!_loc3_)
                                 {
                                    break loop8;
                                 }
                                 §§push(this.§'">§);
                                 loop11:
                                 while(true)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§pop().mClip.mouseEnabled = false;
                                       if(_loc4_ && this)
                                       {
                                          break;
                                       }
                                       continue loop8;
                                    }
                                    §§push(this.§'">§);
                                    addr120:
                                    continue loop10;
                                    if(!(_loc3_ || this))
                                    {
                                       continue;
                                    }
                                    §§pop().mClip.mouseChildren = false;
                                    if(!_loc4_)
                                    {
                                       this.§4j§ = new §5" §(param1.getItemByName("MovieClip_Counter").mClip);
                                       if(!(_loc4_ && this))
                                       {
                                          while(true)
                                          {
                                             this.§4#J§ = §@#B§(§4#;§.singleton.dataModel);
                                             if(_loc3_)
                                             {
                                                continue loop9;
                                             }
                                             addr302:
                                             addr302:
                                             addr302:
                                             while(true)
                                             {
                                                this.§?#Y§ = param1.mClip.sparkles;
                                                addr281:
                                                while(true)
                                                {
                                                   this.§[!+§ = §@#B§(§4#;§.singleton.dataModel).§]"<§;
                                                   break loop11;
                                                }
                                             }
                                          }
                                          continue loop9;
                                          addr42:
                                       }
                                       return;
                                       addr237:
                                    }
                                    §§goto(addr302);
                                 }
                                 do
                                 {
                                    this.§[!+§.addEventListener(§@!X§.§;"Z§,this.§4!D§);
                                    loop5:
                                    do
                                    {
                                       if(_loc4_ && param1)
                                       {
                                          break loop0;
                                       }
                                       this.§3J§(this.§[!+§.§#"0§);
                                       for(; _loc3_; this.refresh(),if(_loc3_)
                                       {
                                          continue loop5;
                                       })
                                       {
                                          if(!_loc4_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr302);
                                       }
                                       §§goto(addr281);
                                    }
                                    while(!(_loc3_ || _loc3_));
                                    
                                 }
                                 while(!_loc3_);
                                 
                                 §§goto(addr237);
                              }
                              addr218:
                              this.§=#=§.mClip.alpha = 1;
                              break loop0;
                           }
                        }
                        continue loop0;
                     }
                     addr189:
                  }
                  break;
               }
            }
            while(true)
            {
               §§push(this.§=#=§);
               if(!_loc4_)
               {
                  §§pop().addEventListener(§6#'§.§+!>§,this.onUIInteraction);
                  §§goto(addr302);
               }
               else
               {
                  §§goto(addr218);
               }
            }
         }
         §§goto(addr189);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§[!+§.removeEventListener(§@!X§.§;"Z§,this.§4!D§);
            loop0:
            while(true)
            {
               this.§=#=§.removeEventListener(§6#'§.§+!>§,this.onUIInteraction);
               loop1:
               while(true)
               {
                  this.§4#J§.§]"<§.removeEventListener(§@!X§.§1c§,this.§=!E§);
                  while(true)
                  {
                     §§push(this.§%8§);
                     if(!_loc2_)
                     {
                        if(§§pop() == null)
                        {
                           return;
                        }
                        loop3:
                        while(!_loc2_)
                        {
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                              §§push(this.§%8§);
                              addr60:
                              loop4:
                              while(true)
                              {
                                 §§pop().stop();
                                 while(!_loc2_)
                                 {
                                    this.§%8§ = null;
                                    if(_loc1_)
                                    {
                                       if(_loc1_)
                                       {
                                          break loop4;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        continue;
                     }
                     §§goto(addr60);
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      public function isEagleUsed() : Boolean
      {
         return §8"f§(§,!q§.§9!,§).§8%§(this.§]!=§);
      }
      
      protected function refresh() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§4j§);
            loop0:
            while(true)
            {
               §§push(this.§4#J§);
               addr278:
               while(true)
               {
                  §§push(§§pop().§]"<§);
                  addr279:
                  while(true)
                  {
                     §§push(this.§]!=§);
                     addr281:
                     while(true)
                     {
                        §§pop().count = §§pop().§8#K§(§§pop());
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr214);
      }
      
      public function hide(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§;"w§)
            {
               loop0:
               while(true)
               {
                  this.§"!A§ = false;
                  addr161:
                  loop1:
                  while(true)
                  {
                     §§push(this.§%8§);
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§%8§);
                              addr141:
                              while(true)
                              {
                                 §§pop().stop();
                                 addr142:
                                 while(_loc2_)
                                 {
                                    if(_loc3_)
                                    {
                                       §§goto(addr165);
                                    }
                                    addr146:
                                 }
                                 continue loop0;
                              }
                              addr106:
                              if(_loc3_ && this)
                              {
                                 continue;
                              }
                              §§push(this.§%8§);
                              if(_loc2_ || _loc2_)
                              {
                                 if(_loc2_ || param1)
                                 {
                                    if(param1)
                                    {
                                       loop10:
                                       while(_loc2_)
                                       {
                                          addr58:
                                          §§push(Number(1));
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr87:
                                             while(true)
                                             {
                                                §§pop().delay = §§pop();
                                                while(_loc2_)
                                                {
                                                   §§push(this.§%8§);
                                                   if(_loc2_)
                                                   {
                                                      §§pop().play();
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         return;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop10;
                                                }
                                                addr97:
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         §§goto(addr106);
                                                      }
                                                      break;
                                                   }
                                                   addr130:
                                                   while(!_loc3_)
                                                   {
                                                      §§push(this.§%8§);
                                                      break loop10;
                                                   }
                                                   continue loop1;
                                                }
                                                §§goto(addr142);
                                             }
                                             addr87:
                                          }
                                          while(true)
                                          {
                                             §§goto(addr87);
                                             §§goto(addr58);
                                          }
                                       }
                                       while(true)
                                       {
                                          §§pop().onComplete = this.§-##§;
                                          §§goto(addr97);
                                       }
                                       addr56:
                                    }
                                    §§push(0.5);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§goto(addr86);
                                    }
                                    §§goto(addr87);
                                 }
                                 §§goto(addr141);
                              }
                              §§goto(addr56);
                           }
                        }
                        while(true)
                        {
                           this.§%8§ = §-#C§.§%!E§.§^!H§(this.§=#=§.mClip,{
                              "scaleX":0,
                              "scaleY":0
                           },null,0.5);
                           §§goto(addr130);
                           §§goto(addr146);
                        }
                     }
                     §§goto(addr141);
                  }
               }
            }
            addr165:
            return;
         }
         §§goto(addr161);
      }
      
      public function show(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.§;"w§);
            if(_loc4_ || _loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     this.§"!A§ = true;
                     loop1:
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           this.§=#=§.mClip.visible = this.§"!A§;
                           loop3:
                           while(!(_loc3_ && this))
                           {
                              while(true)
                              {
                                 §§push(this.§%8§);
                                 if(_loc4_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(_loc4_ || _loc2_)
                                          {
                                             if(!_loc3_)
                                             {
                                                addr49:
                                                this.§%8§.stop();
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§goto(addr57);
                                                }
                                                break;
                                             }
                                             continue loop0;
                                          }
                                          continue loop3;
                                       }
                                       addr57:
                                       if(!_loc4_)
                                       {
                                          §§goto(addr101);
                                       }
                                       if(false)
                                       {
                                          continue loop2;
                                       }
                                       addr104:
                                       §§goto(addr103);
                                    }
                                    addr103:
                                    if(param1)
                                    {
                                       break;
                                    }
                                    §§goto(addr139);
                                 }
                                 §§goto(addr49);
                              }
                              §§push("scaleX");
                              if(_loc4_)
                              {
                                 §§push(1);
                                 if(_loc4_)
                                 {
                                    §§push("scaleY");
                                    if(!(_loc3_ && param1))
                                    {
                                       §§push(1);
                                       if(_loc4_ || this)
                                       {
                                          §§push(null);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop());
                                          }
                                          else
                                          {
                                             §§goto(addr139);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr139);
                              addr176:
                              while(true)
                              {
                                 §§push(this.§%8§);
                                 if(_loc4_)
                                 {
                                    §§pop().play();
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                              return;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               addr101:
               return;
            }
            §§goto(addr104);
         }
         §§goto(addr75);
      }
      
      protected function §4!D§(param1:§@!X§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§3J§(param1.§6#R§);
         }
      }
      
      protected function §3J§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§&A§);
            loop0:
            for(; §§pop(); if(!(_loc2_ || this))
            {
               continue;
            },§§goto(addr108))
            {
               loop1:
               while(true)
               {
                  §§push(param1);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() == "");
                     if(_loc2_ || this)
                     {
                        §§push(!§§pop());
                     }
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 this.§?#Y§.visible = false;
                                 while(_loc2_)
                                 {
                                    if(_loc2_ || this)
                                    {
                                       if(_loc3_ && param1)
                                       {
                                          continue loop1;
                                       }
                                       if(_loc2_)
                                       {
                                          this.§?#Y§.gotoAndStop(1);
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          continue;
                                          continue;
                                       }
                                    }
                                    loop5:
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          §§push(param1);
                                          if(!_loc2_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(§§pop() == this.§]!=§);
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             continue loop3;
                                          }
                                          addr133:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop5;
                                          }
                                       }
                                       else
                                       {
                                          this.§?#Y§.gotoAndStop(1);
                                          addr163:
                                       }
                                    }
                                    continue loop0;
                                    return;
                                 }
                                 break;
                              }
                              if(!_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    break loop0;
                                 }
                                 this.§?#Y§.visible = true;
                                 while(true)
                                 {
                                    this.§?#Y§.gotoAndPlay(1);
                                    break loop6;
                                 }
                                 addr118:
                              }
                              §§goto(addr118);
                              return;
                           }
                           if(!_loc2_)
                           {
                              §§goto(addr118);
                           }
                           §§goto(addr69);
                           addr108:
                        }
                        §§goto(addr133);
                     }
                  }
               }
            }
            this.§?#Y§.visible = false;
            §§goto(addr163);
         }
         §§goto(addr118);
      }
      
      public function §1e§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§;"w§)
            {
               loop0:
               while(true)
               {
                  this.§&A§ = false;
                  while(true)
                  {
                     this.§9"3§.setEnabled(this.§&A§);
                     loop2:
                     for(; _loc2_ || this; while(_loc2_ || this)
                     {
                        if(!(_loc2_ || _loc2_))
                        {
                           continue loop0;
                        }
                        if(!(_loc1_ && _loc2_))
                        {
                           §§goto(addr110);
                           §§push(this.§%8§);
                        }
                     })
                     {
                        §§push(this.§%8§);
                        if(!(_loc1_ && _loc2_))
                        {
                           if(!§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 this.§%8§ = §-#C§.§%!E§.§^!H§(this.§=#=§.mClip,{
                                    "scaleX":1,
                                    "scaleY":1,
                                    "alpha":0.5
                                 },null,0.5);
                                 while(_loc2_)
                                 {
                                    §§push(this.§%8§);
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§pop().play();
                                       if(_loc2_ || _loc1_)
                                       {
                                          if(_loc2_)
                                          {
                                             break loop4;
                                          }
                                          continue loop2;
                                       }
                                       continue;
                                    }
                                 }
                                 addr111:
                                 while(true)
                                 {
                                    continue loop4;
                                 }
                              }
                           }
                           continue;
                           return;
                        }
                        while(true)
                        {
                           §§pop().stop();
                           §§goto(addr111);
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr111);
      }
      
      protected function §-##§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.refresh();
         }
         do
         {
            dispatchEvent(new Event(§0!M§));
         }
         while(_loc2_ && _loc1_);
         
      }
      
      protected function §2!x§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.refresh();
            do
            {
               dispatchEvent(new Event(§<!§));
            }
            while(_loc1_);
            
         }
      }
      
      private function §=!E§(param1:§@!X§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(param1.§6#R§ == this.§]!=§)
            {
               if(_loc3_ || _loc2_)
               {
                  this.refresh();
               }
            }
         }
      }
      
      private function §'V§(param1:§[#R§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(param1)
            {
               if(!(_loc3_ && this))
               {
                  addr52:
                  param1.§^"P§();
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      protected function onUIInteraction(param1:§6#'§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(this.§;"w§);
            if(!(_loc4_ && this))
            {
               if(!§§pop())
               {
                  if(!(_loc4_ && this))
                  {
                     return;
                  }
                  addr37:
                  §§push(this.§4#J§.§]"<§.§ #D§(this.§]!=§));
                  if(_loc5_)
                  {
                     addr45:
                     §§push(Boolean(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  §§push(this.§4#J§.§]"<§.§8#K§(this.§]!=§));
                  if(_loc5_ || _loc3_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  if(_loc5_)
                  {
                     §§push(param1.§=!k§);
                     loop0:
                     while(true)
                     {
                        if(§§pop().toUpperCase().indexOf("OVER_MIGHTY_EAGLE") == 0)
                        {
                           loop1:
                           while(true)
                           {
                              §§push(_loc3_);
                              loop2:
                              while(true)
                              {
                                 §§push(0);
                                 loop3:
                                 while(true)
                                 {
                                    §§push(§§pop() <= §§pop());
                                    loop4:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop5:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop6:
                                             while(true)
                                             {
                                                §§pop();
                                                addr261:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   addr219:
                                                   while(true)
                                                   {
                                                      §§push(false);
                                                      addr220:
                                                      while(!_loc4_)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         while(!(_loc4_ && param1))
                                                         {
                                                         }
                                                         continue loop6;
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§'">§);
                                                   addr234:
                                                   while(true)
                                                   {
                                                      §§pop().mClip.gotoAndPlay("start");
                                                      addr237:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   loop20:
                                                   for(; _loc5_ || this; if(_loc4_ && _loc2_)
                                                   {
                                                      continue;
                                                   },if(!_loc5_)
                                                   {
                                                      continue loop1;
                                                   },this.§8O§(),§§goto(addr140))
                                                   {
                                                      §§push(_loc3_);
                                                      if(!_loc5_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§push(0);
                                                      if(!(_loc5_ || _loc3_))
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§push(§§pop() <= §§pop());
                                                      if(!(_loc4_ && this))
                                                      {
                                                         §§push(§§pop());
                                                         loop21:
                                                         for(; _loc5_ || _loc2_; §§push(false),if(!(_loc5_ || param1))
                                                         {
                                                            continue;
                                                         },§§goto(addr111),§§push(§§pop() == §§pop()))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  loop23:
                                                                  for(; !_loc4_; continue loop24)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(_loc5_ || _loc2_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              continue loop21;
                                                                           }
                                                                           §§goto(addr223);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr111:
                                                                           if(_loc4_)
                                                                           {
                                                                              continue loop24;
                                                                           }
                                                                           if(_loc5_)
                                                                           {
                                                                              addr115:
                                                                              if(!_loc4_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       this.§0"[§();
                                                                                       if(_loc5_ || param1)
                                                                                       {
                                                                                          if(!(_loc5_ || param1))
                                                                                          {
                                                                                             continue loop20;
                                                                                          }
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §§goto(addr261);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr140:
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop23;
                                                                                          }
                                                                                          addr142:
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr65:
                                                                                    }
                                                                                    continue loop20;
                                                                                    return;
                                                                                    §§goto(addr115);
                                                                                 }
                                                                                 addr117:
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                        }
                                                                        §§goto(addr219);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§'">§);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§pop().mClip.gotoAndStop(1);
                                                                              break loop23;
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr234);
                                                                        addr207:
                                                                     }
                                                                  }
                                                                  while(_loc5_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(param1.§=!k§);
                                                                        if(_loc5_)
                                                                        {
                                                                           if(§§pop().toUpperCase() != "MIGHTY_EAGLE")
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop20;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     §§goto(addr65);
                                                                  }
                                                                  §§goto(addr237);
                                                               }
                                                               addr186:
                                                            }
                                                            §§goto(addr117);
                                                         }
                                                         §§goto(addr220);
                                                      }
                                                      §§goto(addr186);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(param1.§=!k§);
                           continue loop0;
                           §§goto(addr237);
                        }
                     }
                  }
                  §§goto(addr142);
               }
               §§goto(addr37);
            }
            §§goto(addr45);
         }
         §§goto(addr37);
      }
      
      private function §0"[§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§try§.§0"[§(this.§]!=§));
         if(!(_loc3_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            §§push(_loc1_ == §^#]§.§5!&§);
            if(_loc4_ || _loc1_)
            {
               if(§§pop())
               {
                  addr60:
                  §§push(true);
                  if(_loc3_)
                  {
                  }
                  addr72:
                  §§push(Boolean(§§pop()));
               }
               else
               {
                  §§push(false);
                  if(_loc4_ || this)
                  {
                     §§goto(addr72);
                  }
               }
            }
            var _loc2_:* = §§pop();
            if(!(_loc3_ && _loc2_))
            {
               if(_loc2_)
               {
                  if(_loc4_)
                  {
                     addr95:
                     dispatchEvent(new Event(§9"9§));
                  }
               }
               return;
            }
            §§goto(addr95);
         }
         §§goto(addr60);
      }
      
      private function §8O§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§[!j§ = new §!Z§(§`"W§.§?z§,§+5§.§>!g§,§^!B§.§0#"§,this.§]!=§);
         if(_loc3_ || this)
         {
            §4#;§.singleton.popupManager.openPopup(_loc1_,true,true,true);
         }
      }
   }
}
