package §'!n§
{
   import §!"W§.§@!X§;
   import §!"e§.§`"W§;
   import §'y§.§^!B§;
   import §+!c§.§5" §;
   import §+D§.§ #^§;
   import §+D§.§0"$§;
   import §+D§.§^"m§;
   import §,"N§.§6"w§;
   import §,"N§.§@#B§;
   import §1#R§.§+#[§;
   import §;! §.§!Z§;
   import §;"Y§.§1"z§;
   import §<w§.§6#'§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §[#§ extends EventDispatcher
   {
      
      public static const §9!4§:String = "extra_bird_used";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §9!4§ = "extra_bird_used";
         }
      }
      
      protected var §=#=§:§ #^§;
      
      protected var §`;§:§^"m§;
      
      protected var §'">§:§0"$§;
      
      protected var §4j§:§5" §;
      
      protected var §]!=§:String;
      
      protected var §4#J§:§@#B§;
      
      protected var §6"K§:§[!j§;
      
      protected var §&A§:Boolean;
      
      public function §[#§(param1:§ #^§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
         }
         do
         {
            this.init(param1);
         }
         while(!(_loc3_ || param1));
         
      }
      
      public function get view() : § #^§
      {
         return this.§=#=§;
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&A§ = param1;
            do
            {
               this.refresh();
            }
            while(_loc3_);
            
         }
      }
      
      public function get isEnabled() : Boolean
      {
         return this.§&A§;
      }
      
      protected function init(param1:§ #^§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§&A§ = true;
            loop0:
            while(true)
            {
               this.§]!=§ = §6"w§.§1!m§;
               loop1:
               while(true)
               {
                  this.§=#=§ = param1;
                  while(true)
                  {
                     this.§`;§ = §^"m§(param1.getItemByName("Button_ExtraBird"));
                     continue loop0;
                     addr58:
                     if(!(_loc2_ && _loc2_))
                     {
                        this.refresh();
                        addr65:
                        if(_loc3_ || _loc2_)
                        {
                           return;
                           addr101:
                        }
                        loop15:
                        while(true)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              §§goto(addr58);
                           }
                           addr74:
                           loop14:
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 addr76:
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    if(_loc2_ && param1)
                                    {
                                       break;
                                    }
                                    if(!_loc2_)
                                    {
                                       this.§4#J§.§]"<§.addEventListener(§@!X§.§1c§,this.§=!E§);
                                       continue loop15;
                                    }
                                    addr189:
                                    while(_loc3_)
                                    {
                                       §§push(this.§'">§);
                                       while(true)
                                       {
                                          §§pop().mClip.gotoAndStop(1);
                                          break loop14;
                                       }
                                    }
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    this.§4j§ = new §5" §(param1.getItemByName("MovieClip_Counter").mClip);
                                    §§goto(addr76);
                                 }
                                 addr157:
                              }
                              loop12:
                              while(true)
                              {
                                 if(_loc3_ || this)
                                 {
                                    if(!_loc2_)
                                    {
                                       this.§=#=§.addEventListener(§6#'§.§+!>§,this.onUIInteraction);
                                       break loop15;
                                    }
                                    break;
                                 }
                                 addr164:
                                 loop10:
                                 while(true)
                                 {
                                    §§push(this.§'">§);
                                    if(_loc3_ || this)
                                    {
                                       addr148:
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          §§pop().setVisibility(false);
                                          §§goto(addr157);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                §§pop().mClip.mouseEnabled = false;
                                                break loop12;
                                             }
                                             break;
                                             §§goto(addr148);
                                          }
                                          §§goto(addr177);
                                          addr168:
                                       }
                                    }
                                    addr161:
                                    while(true)
                                    {
                                       §§pop().mClip.mouseChildren = false;
                                       continue loop10;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr161);
                              }
                              continue loop15;
                           }
                           while(true)
                           {
                              §§goto(addr168);
                           }
                        }
                        while(_loc3_ || param1)
                        {
                           this.§4#J§ = §@#B§(§4#;§.singleton.dataModel);
                           §§goto(addr74);
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr164);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§6"K§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§6"K§);
                     addr127:
                     while(true)
                     {
                        §§pop().removeEventListener(§+#[§.CLOSE,this.§9!3§);
                        addr132:
                        while(true)
                        {
                        }
                     }
                  }
                  addr125:
               }
               while(true)
               {
                  this.§6"K§ = null;
                  while(!(_loc1_ && this))
                  {
                     if(!_loc1_)
                     {
                        §4#;§.singleton.popupManager.removeEventListener(§+#[§.CLOSE,this.§<"!§);
                        while(true)
                        {
                           this.§=#=§.removeEventListener(§6#'§.§+!>§,this.onUIInteraction);
                           while(true)
                           {
                              this.§4#J§.§]"<§.removeEventListener(§@!X§.§1c§,this.§=!E§);
                              §§goto(addr71);
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr125);
                     }
                  }
                  §§goto(addr132);
               }
            }
            §§goto(addr127);
         }
         addr71:
         while(true)
         {
            this.§4#J§ = null;
            if(_loc2_)
            {
               if(_loc2_ || _loc2_)
               {
                  if(_loc2_)
                  {
                     if(!(_loc1_ && this))
                     {
                        break;
                     }
                     continue loop2;
                  }
                  continue loop3;
               }
               continue loop4;
            }
         }
      }
      
      protected function refresh() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§4j§);
            loop0:
            while(true)
            {
               §§push(this.§4#J§);
               addr169:
               while(true)
               {
                  §§push(§§pop().§]"<§);
                  addr170:
                  while(true)
                  {
                     §§push(this.§]!=§);
                     addr172:
                     while(true)
                     {
                        §§pop().count = §§pop().§8#K§(§§pop());
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      private function §=!E§(param1:§@!X§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1.§6#R§ == this.§]!=§)
            {
               if(!_loc2_)
               {
                  this.refresh();
               }
            }
         }
      }
      
      protected function onUIInteraction(param1:§6#'§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§@#B§(§4#;§.singleton.dataModel).§]"<§.§8#K§(this.§]!=§));
         if(_loc4_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            §§push(param1.§=!k§);
            loop0:
            while(true)
            {
               if(§§pop().toUpperCase().indexOf("OVER_EXTRA_BIRD") == 0)
               {
                  while(true)
                  {
                     §§push(_loc2_);
                     addr175:
                     while(true)
                     {
                        §§push(0);
                        addr186:
                        while(true)
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(!_loc3_)
                              {
                                 while(true)
                                 {
                                    §§push(this.§'">§);
                                    addr191:
                                    while(true)
                                    {
                                       §§pop().mClip.gotoAndPlay("start");
                                    }
                                 }
                                 addr189:
                              }
                              while(true)
                              {
                              }
                              addr194:
                           }
                        }
                     }
                  }
                  addr174:
               }
               while(true)
               {
                  §§push(param1.§=!k§);
                  continue loop0;
               }
            }
         }
         §§goto(addr189);
      }
      
      private function §0"[§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            dispatchEvent(new Event(§9!4§));
         }
      }
      
      private function §8O§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§6"K§ = new §!Z§(§`"W§.§?z§,§+5§.§>!g§,§^!B§.§0#"§,this.§]!=§);
            do
            {
               §4#;§.singleton.popupManager.openPopup(this.§6"K§,true,true,true);
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      private function §<"!§(param1:§+#[§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§6"K§ == null)
            {
               if(_loc3_)
               {
                  addr50:
                  this.§&#D§();
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      private function §9!3§(param1:§+#[§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§6"K§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     addr76:
                     this.§6"K§.removeEventListener(§+#[§.CLOSE,this.§9!3§);
                  }
                  while(true)
                  {
                  }
                  addr81:
               }
               loop1:
               while(true)
               {
                  this.§6"K§ = null;
                  do
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                     continue loop1;
                  }
                  while(this.§&#D§(), _loc2_);
                  
                  §§goto(addr44);
               }
            }
            §§goto(addr76);
         }
         addr44:
      }
      
      private function §&#D§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§4#;§.singleton.popupManager.§""n§());
         if(!(_loc3_ && _loc2_))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.§4#J§.§]"<§.§8#K§(this.§]!=§));
         if(!(_loc3_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            §§push(_loc2_ > 0);
            if(_loc4_ || _loc3_)
            {
               if(§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§pop();
                     addr128:
                     while(true)
                     {
                        §§push(_loc1_);
                        if(_loc4_)
                        {
                           §§push(!§§pop());
                        }
                        if(_loc4_)
                        {
                           break;
                        }
                        continue loop3;
                     }
                  }
                  addr127:
               }
               loop0:
               while(§§pop())
               {
                  if(_loc4_ || this)
                  {
                     while(true)
                     {
                        §4#;§.singleton.popupManager.removeEventListener(§+#[§.CLOSE,this.§<"!§);
                     }
                     addr94:
                  }
                  while(_loc4_)
                  {
                     this.§0"[§();
                     if(!(_loc3_ && _loc1_))
                     {
                        break loop0;
                     }
                  }
                  §§goto(addr128);
               }
               return;
            }
            §§goto(addr127);
         }
         §§goto(addr94);
      }
   }
}
