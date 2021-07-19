package §[!m§
{
   import §+D§.§ #^§;
   import §+D§.§"-§;
   import §0!=§.§]"3§;
   import §1!i§.§<"&§;
   import §1#R§.§+#[§;
   import §;"Y§.§&#X§;
   import §<w§.§6#'§;
   import §<w§.§^!q§;
   import §="2§.§?!r§;
   import §>@§.§#y§;
   import §>@§.§5"H§;
   import §]!$§.§6y§;
   import §]!$§.§>!!§;
   import §]!$§.§`!]§;
   import §]!$§.§`#?§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements §[!j§, §#y§
   {
       
      
      protected var §^c§:§ #^§;
      
      private var §=#=§:MovieClip;
      
      private var §^!s§:MovieClip;
      
      protected var §%4§:XML;
      
      protected var §1`§:int;
      
      protected var §4B§:int;
      
      protected var §6##§:String;
      
      protected var §`"B§:String = "none";
      
      protected var §^!`§:String = "best";
      
      protected var §+#=§:Boolean = true;
      
      protected var §7!=§:§>!!§;
      
      protected var §<!%§:Vector.<String>;
      
      protected var §?!O§:§6y§;
      
      protected var §^"N§:§5"H§;
      
      protected var §;D§:§]"3§;
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.§1`§ = param1;
               while(true)
               {
                  this.§4B§ = param2;
                  continue loop0;
                  addr76:
                  while(_loc5_ || param1)
                  {
                     this.§6##§ = param4;
                     if(_loc5_ || param1)
                     {
                        addr39:
                        if(_loc5_ || this)
                        {
                           return;
                           addr56:
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this);
            if(_loc5_ || param1)
            {
               §§pop().§%4§ = param3 || <xml></xml>;
               §§goto(addr76);
            }
            §§goto(addr71);
         }
         §§goto(addr56);
      }
      
      public function get id() : String
      {
         return this.§6##§;
      }
      
      public function get §^!F§() : int
      {
         return this.§1`§;
      }
      
      public function get priority() : int
      {
         return this.§4B§;
      }
      
      public function set priority(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4B§ = param1;
         }
      }
      
      public function get isTransitioning() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§7!=§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              §§push(§§pop());
                              loop8:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §§pop();
                                       loop10:
                                       while(!(_loc2_ && this))
                                       {
                                          while(true)
                                          {
                                             §§push(this.§`"B§);
                                             loop16:
                                             while(true)
                                             {
                                                §§push(§6y§.§>]§);
                                                loop17:
                                                while(true)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   loop18:
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc2_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            if(_loc2_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc1_ || _loc2_))
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     §§push(this.§`"B§);
                                                                     if(!(_loc1_ || this))
                                                                     {
                                                                        continue loop16;
                                                                     }
                                                                     §§push(§6y§.§;X§);
                                                                     if(_loc2_ && this)
                                                                     {
                                                                        continue loop17;
                                                                     }
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(_loc1_)
                                                                        {
                                                                           if(_loc1_ || this)
                                                                           {
                                                                              do
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc1_ || this)
                                                                                    {
                                                                                       §§push(true);
                                                                                       while(_loc2_)
                                                                                       {
                                                                                          continue loop14;
                                                                                       }
                                                                                       addr84:
                                                                                       if(_loc1_)
                                                                                       {
                                                                                          return §§pop();
                                                                                       }
                                                                                       continue loop7;
                                                                                       addr84:
                                                                                    }
                                                                                    else if(!(_loc1_ || _loc2_))
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    §§goto(addr84);
                                                                                 }
                                                                                 §§push(false);
                                                                              }
                                                                              while(!(_loc1_ || _loc2_));
                                                                              
                                                                              addr64:
                                                                              if(!_loc2_)
                                                                              {
                                                                                 return §§pop();
                                                                              }
                                                                              continue loop1;
                                                                              addr64:
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        continue loop18;
                                                                     }
                                                                     §§goto(addr84);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr64);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               break loop10;
                                                            }
                                                            addr158:
                                                         }
                                                      }
                                                      addr128:
                                                      while(true)
                                                      {
                                                         continue loop6;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       continue loop0;
                                    }
                                 }
                                 §§goto(addr64);
                              }
                           }
                        }
                     }
                     §§goto(addr158);
                  }
               }
            }
         }
         §§goto(addr151);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§^c§);
            loop0:
            while(true)
            {
               §§pop().removeEventListener(§6#'§.§+!>§,this.uIInteractionHandler);
               loop1:
               while(true)
               {
                  this.§^!d§();
                  loop2:
                  while(true)
                  {
                     §§push(this.§7!=§);
                     if(!_loc1_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§7!=§);
                              addr313:
                              while(true)
                              {
                                 §§pop().dispose();
                                 addr314:
                                 while(true)
                                 {
                                    this.§7!=§ = null;
                                    addr304:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              addr210:
                              if(!(_loc2_ || _loc2_))
                              {
                                 continue;
                              }
                              if(!_loc2_)
                              {
                                 continue loop1;
                              }
                              §§push(Boolean(this.§^!s§.parent));
                              if(_loc2_)
                              {
                                 loop33:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc2_ || this)
                                    {
                                       if(§§pop())
                                       {
                                          loop26:
                                          while(true)
                                          {
                                             if(!(_loc1_ && this))
                                             {
                                                §§pop();
                                                loop27:
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      continue loop26;
                                                   }
                                                   loop20:
                                                   while(true)
                                                   {
                                                      loop21:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(this.§^!s§));
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            break loop33;
                                                            addr107:
                                                            if(_loc1_ && _loc2_)
                                                            {
                                                               continue;
                                                            }
                                                            addr114:
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§=#=§ = null;
                                                                           loop31:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc2_ || _loc2_))
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              this.§^c§ = null;
                                                                              loop32:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc2_ || _loc2_))
                                                                                 {
                                                                                    continue loop27;
                                                                                 }
                                                                                 if(!(_loc1_ && this))
                                                                                 {
                                                                                    §§push(this.§^"N§);
                                                                                    if(_loc2_ || _loc1_)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          §§goto(addr25);
                                                                                       }
                                                                                       if(_loc1_ && _loc1_)
                                                                                       {
                                                                                          continue loop31;
                                                                                       }
                                                                                       if(_loc1_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          if(!_loc1_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§^"N§);
                                                                                                break loop32;
                                                                                             }
                                                                                             addr53:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr314);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(!_loc1_)
                                                                                          {
                                                                                             this.§=#=§.removeChild(this.§^!s§);
                                                                                             continue loop27;
                                                                                          }
                                                                                          addr125:
                                                                                       }
                                                                                       loop11:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§^c§);
                                                                                          addr251:
                                                                                          loop12:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc1_ && _loc1_))
                                                                                             {
                                                                                                if(!_loc1_)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop().mClip.parent));
                                                                                                   break loop27;
                                                                                                }
                                                                                                addr298:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().clear();
                                                                                                   addr299:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§^c§);
                                                                                                      break loop12;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§push(this.§^c§);
                                                                                             addr284:
                                                                                             break;
                                                                                             if(_loc1_ && _loc1_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc1_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             §§push(§§pop().mClip.parent == this.§^!s§);
                                                                                             while(true)
                                                                                             {
                                                                                                addr238:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc1_)
                                                                                                      {
                                                                                                         this.§^!s§.removeChild(this.§^c§.mClip);
                                                                                                      }
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   continue loop21;
                                                                                                   §§goto(addr114);
                                                                                                }
                                                                                             }
                                                                                             addr237:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Boolean(§§pop().mClip));
                                                                                             addr291:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                loop9:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                      addr293:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         addr268:
                                                                                                         while(_loc2_ || _loc1_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               addr276:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr237);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      addr266:
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr251);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr304);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop().removeLocalizationTarget(this);
                                                                                 continue loop31;
                                                                              }
                                                                           }
                                                                           addr25:
                                                                           return;
                                                                        }
                                                                        addr79:
                                                                     }
                                                                     §§goto(addr125);
                                                                  }
                                                                  addr123:
                                                               }
                                                               break loop27;
                                                            }
                                                            §§goto(addr238);
                                                         }
                                                      }
                                                   }
                                                }
                                                while(_loc2_)
                                                {
                                                   §§goto(addr266);
                                                }
                                                §§goto(addr293);
                                             }
                                             §§goto(addr276);
                                          }
                                          addr175:
                                       }
                                       §§goto(addr123);
                                    }
                                    break;
                                 }
                                 while(!_loc1_)
                                 {
                                    if(§§pop())
                                    {
                                       §§goto(addr195);
                                    }
                                    §§goto(addr155);
                                 }
                                 addr155:
                                 §§goto(addr268);
                              }
                              §§goto(addr175);
                           }
                        }
                        while(true)
                        {
                           §§goto(addr298);
                           §§goto(addr304);
                        }
                     }
                     §§goto(addr313);
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(this.§^c§);
            loop0:
            while(true)
            {
               §§push(param2);
               addr69:
               while(true)
               {
                  §§pop().viewHeight = §§pop();
                  continue loop0;
               }
            }
         }
      }
      
      public final function open(param1:MovieClip, param2:§5"H§, param3:§]"3§, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            this.§^"N§ = param2;
            while(true)
            {
               this.§;D§ = param3;
               while(true)
               {
                  this.initialize(param1);
                  while(!_loc6_)
                  {
                     this.createTransitionLabels();
                     while(!_loc6_)
                     {
                        this.init();
                        while(_loc5_)
                        {
                           if(!_loc6_)
                           {
                              return;
                              addr46:
                           }
                        }
                     }
                  }
               }
            }
            addr90:
         }
         while(true)
         {
            this.§?"-§();
            while(true)
            {
               if(_loc5_)
               {
                  continue;
               }
               §§goto(addr90);
            }
         }
         §§goto(addr46);
      }
      
      public final function close(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§^c§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§^c§);
                     addr64:
                     while(true)
                     {
                        §§pop().setEnabled(false);
                        do
                        {
                           this.hide(param1);
                        }
                        while(_loc3_);
                        
                        if(!(_loc3_ && _loc3_))
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr62:
               }
               return;
            }
            §§goto(addr64);
         }
         §§goto(addr62);
      }
      
      private function initialize(param1:MovieClip) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§=#=§ = param1;
            while(true)
            {
               this.§^c§ = §"-§.§=#T§(this.§%4§,null,null,null);
            }
            addr186:
         }
         loop1:
         while(true)
         {
            §§push(this.§^c§);
            loop2:
            while(true)
            {
               §§pop().addEventListener(§6#'§.§+!>§,this.uIInteractionHandler);
               loop3:
               while(true)
               {
                  §§push(this.§^c§);
                  while(true)
                  {
                     §§push(true);
                     addr149:
                     addr65:
                     while(true)
                     {
                        §§pop().setVisibility(§§pop());
                        addr150:
                        while(!_loc2_)
                        {
                           §§push(this.§^c§);
                           continue loop2;
                        }
                        continue loop3;
                     }
                     if(!(_loc2_ && this))
                     {
                        §§pop().mClip.name = "Container_" + this.§^c§.mClip.name;
                        loop12:
                        for(; _loc3_; this.§<!%§ = new Vector.<String>(),if(!_loc3_)
                        {
                           continue;
                        },addr38:,if(_loc3_)
                        {
                           addr40:
                           if(!(_loc3_ || param1))
                           {
                              while(true)
                              {
                                 this.§^!s§ = new MovieClip();
                                 addr129:
                                 while(true)
                                 {
                                    this.§^!s§.addChild(this.§^c§.mClip);
                                    §§goto(addr123);
                                    §§goto(addr38);
                                 }
                                 §§goto(addr40);
                              }
                              addr144:
                           }
                           if(_loc3_ || param1)
                           {
                              return;
                           }
                           §§goto(addr150);
                        },§§goto(addr129))
                        {
                           addr82:
                           if(_loc3_ || param1)
                           {
                              if(_loc3_)
                              {
                                 continue;
                              }
                              §§goto(addr186);
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§=#=§.addChild(this.§^!s§);
                                 break loop12;
                                 §§goto(addr82);
                              }
                              addr123:
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      protected function uIInteractionHandler(param1:§6#'§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!this.isTransitioning)
            {
               do
               {
                  this.onUIInteraction(param1.§@#8§,param1.§=!k§,param1.§^"r§);
               }
               while(_loc3_ && _loc3_);
               
               if(!_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2.toUpperCase();
         if(_loc5_)
         {
            if("CLOSE" === _loc4_)
            {
               addr63:
               §§push(0);
               if(!_loc5_)
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
                  §?!r§.§"#_§("close_popup_button_click");
                  if(_loc5_ || param1)
                  {
                     dispatchEvent(new §+#[§(§+#[§.CLOSE,this));
                     if(!(_loc6_ && param2))
                     {
                        break;
                     }
                     break;
                  }
            }
            return;
         }
         §§goto(addr63);
      }
      
      protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§^"N§.addLocalizationTarget(this);
         }
      }
      
      protected function createTransitionLabels() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§<!%§.push(§`#?§.§[! §());
            while(true)
            {
               this.§<!%§.push(§`#?§.§9!-§());
               while(!_loc2_)
               {
                  this.§<!%§.push(§`#?§.§`J§());
                  loop2:
                  for(; _loc1_ || this; while(true)
                  {
                     if(_loc1_ || _loc2_)
                     {
                        continue;
                     }
                     continue loop2;
                  },§§goto(addr83))
                  {
                     this.§<!%§.push(§`#?§.§@!!§());
                     while(true)
                     {
                        this.§<!%§.push(§`#?§.§8#@§());
                        §§goto(addr76);
                     }
                  }
               }
            }
         }
         addr76:
         while(true)
         {
            this.§<!%§.push(§`#?§.§;!&§);
            continue loop2;
            addr36:
            if(!(_loc2_ && _loc2_))
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop3;
            }
         }
      }
      
      protected function §?"-§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§^c§);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() == null);
               if(_loc4_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     if(_loc4_)
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           addr49:
                           if(this.§^c§.mClip == null)
                           {
                              if(_loc4_)
                              {
                                 return;
                              }
                           }
                        }
                        var _loc1_:MovieClip = this.§^!s§;
                        var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
                        if(_loc4_ || _loc3_)
                        {
                           §<"&§.§6!t§(_loc1_,this.§<!%§,_loc2_,§<"&§.§?"5§);
                        }
                        loop0:
                        while(true)
                        {
                           if(_loc2_.length == 0)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              loop1:
                              while(true)
                              {
                                 addr85:
                                 while(true)
                                 {
                                    this.createTransition(_loc2_);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 if(_loc4_)
                                 {
                                    return;
                                 }
                                 continue loop0;
                              }
                           }
                           §§goto(addr85);
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^!d§();
            do
            {
               this.§7!=§ = new §`!]§(param1,this.§^c§.mClip.stage);
            }
            while(_loc2_ && param1);
            
         }
      }
      
      protected function getRunTransitionData() : §6y§
      {
         return new §6y§(§`#?§.§[! §(),§`#?§.§1#$§,§`#?§.§;!&§,§6y§.§5z§,this.§+#=§,this.§^!`§);
      }
      
      protected function getTransitionInData() : §6y§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§6y§ = new §6y§();
         if(!(_loc3_ && _loc1_))
         {
            _loc1_.§%#N§ = §`#?§.§1#$§;
            while(true)
            {
               _loc1_.§`"i§ = §`#?§.§;!&§;
               loop1:
               for(; !(_loc3_ && _loc3_); if(!_loc2_)
               {
                  continue;
               },return _loc1_,addr52:)
               {
                  _loc1_.startLabel = §`#?§.§@!!§();
                  while(true)
                  {
                     _loc1_.type = §6y§.§>]§;
                     while(_loc2_ || _loc2_)
                     {
                        _loc1_.stageQuality = this.§^!`§;
                        if(_loc2_)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      private function §]!p§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = this.§`"B§;
         if(!_loc3_)
         {
            §§push(§6y§.§5z§);
            if(_loc4_)
            {
               §§push(_loc2_);
               if(_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc4_)
                     {
                        §§push(0);
                        if(!_loc4_)
                        {
                           addr97:
                        }
                     }
                     else
                     {
                        addr94:
                        §§push(1);
                        if(!_loc3_)
                        {
                           §§goto(addr97);
                        }
                     }
                  }
                  else
                  {
                     §§push(§6y§.§>]§);
                     if(_loc4_)
                     {
                        addr88:
                        §§push(_loc2_);
                        if(!_loc3_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc4_)
                              {
                                 §§goto(addr94);
                              }
                           }
                           else
                           {
                              addr101:
                              if(§6y§.§;X§ !== _loc2_)
                              {
                                 addr125:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       this.§,!7§();
                                       addr27:
                                       break;
                                       addr51:
                                    case 1:
                                       this.onTransitionInComplete();
                                       if(_loc4_ || _loc2_)
                                       {
                                          if(!(_loc3_ && this))
                                          {
                                             break;
                                          }
                                          §§goto(addr51);
                                       }
                                       break;
                                    case 2:
                                       this.onTransitionOutComplete();
                                       if(!_loc3_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          §§goto(addr27);
                                       }
                                 }
                                 return;
                                 §§push(3);
                              }
                           }
                           §§goto(addr125);
                           §§goto(addr125);
                        }
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr125);
               }
               §§goto(addr101);
            }
            §§goto(addr88);
         }
         §§goto(addr94);
      }
      
      protected function onTransitionInComplete() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§`"B§);
         if(!(_loc2_ && this))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc3_)
         {
            this.§^!d§();
            while(true)
            {
               this.onTransitionComplete(_loc1_);
               §§goto(addr69);
            }
         }
         addr69:
         while(true)
         {
            this.§%!K§(this.getRunTransitionData());
            if(_loc3_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function §,!7§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.onTransitionComplete(this.§`"B§);
            while(this.§?!O§)
            {
               do
               {
                  this.§%!K§(this.§?!O§);
                  do
                  {
                     this.§?!O§ = null;
                  }
                  while(!(_loc1_ || _loc1_));
                  
               }
               while(!_loc1_);
               
               if(_loc1_ || _loc1_)
               {
                  addr53:
                  break;
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      protected function onTransitionOutComplete() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§^!d§();
            loop0:
            while(true)
            {
               this.onTransitionComplete(this.§`"B§);
               while(true)
               {
                  this.§^c§.setVisibility(false);
                  continue loop0;
                  addr29:
                  if(_loc2_ || _loc2_)
                  {
                     return;
                     addr46:
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      protected function §%!K§(param1:§6y§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^!d§();
            loop0:
            while(true)
            {
               §§push(this.§7!=§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(param1.type == §6y§.§8"@§);
                              if(_loc3_ || _loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop3;
                                 }
                                 if(_loc2_ && _loc2_)
                                 {
                                    continue loop2;
                                 }
                                 §§push(!§§pop());
                                 while(true)
                                 {
                                 }
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    break loop4;
                                 }
                                 if(!(_loc2_ && param1))
                                 {
                                    this.§`"B§ = param1.type;
                                 }
                                 loop5:
                                 while(!(_loc2_ && _loc2_))
                                 {
                                    §§push(this.§7!=§);
                                    while(true)
                                    {
                                       §§pop().addEventListener(Event.COMPLETE,this.§]!p§);
                                       §§push(this.§7!=§);
                                       addr114:
                                       continue loop0;
                                       if(_loc3_)
                                       {
                                          if(!_loc2_)
                                          {
                                             §§pop().start(param1);
                                             loop8:
                                             for(; _loc3_ || this; if(_loc3_ || _loc3_)
                                             {
                                                continue loop5;
                                             })
                                             {
                                                while(true)
                                                {
                                                   this.onTransitionStart(this.§`"B§);
                                                   do
                                                   {
                                                      §§push(this.§;D§);
                                                      if(!_loc2_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            break loop4;
                                                         }
                                                         if(_loc3_ || this)
                                                         {
                                                            continue loop8;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr53:
                                                         §§pop().addEventListener(§^!q§.§1c§,this.runTransition);
                                                      }
                                                   }
                                                   while(!(_loc3_ || _loc3_));
                                                   
                                                   break loop4;
                                                }
                                             }
                                             continue loop0;
                                          }
                                          continue loop1;
                                       }
                                    }
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    §§goto(addr53);
                                    §§push(this.§;D§);
                                 }
                                 continue loop4;
                              }
                           }
                           return;
                        }
                     }
                     §§goto(addr138);
                  }
               }
            }
         }
         §§goto(addr98);
      }
      
      protected function §^!d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§7!=§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  addr106:
                  while(true)
                  {
                     §§push(this.§7!=§);
                     addr108:
                     loop3:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§]!p§);
                        addr113:
                        while(true)
                        {
                           §§push(this.§7!=§);
                           if(!_loc1_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        addr90:
                        §§pop().stop();
                     }
                  }
                  addr106:
               }
               loop0:
               while(true)
               {
                  this.§`"B§ = §6y§.§8"@§;
                  while(_loc2_ || _loc1_)
                  {
                     §§push(this.§;D§);
                     if(!(_loc1_ && this))
                     {
                        if(§§pop())
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              if(_loc1_)
                              {
                                 continue;
                              }
                              this.§;D§.removeEventListener(§^!q§.§1c§,this.runTransition);
                              addr46:
                           }
                           if(!(_loc1_ && _loc1_))
                           {
                              if(!_loc1_)
                              {
                                 break loop0;
                              }
                              §§goto(addr106);
                           }
                           §§goto(addr113);
                        }
                        break loop0;
                     }
                     §§goto(addr46);
                  }
                  §§goto(addr90);
               }
               return;
            }
            §§goto(addr108);
         }
         §§goto(addr106);
      }
      
      protected function §2"z§(param1:§6y§, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(this.§7!=§);
            loop0:
            while(§§pop().isRunning)
            {
               while(true)
               {
                  this.§?!O§ = param1;
                  addr65:
                  while(_loc4_)
                  {
                     if(_loc3_ && _loc3_)
                     {
                        break loop0;
                     }
                     continue loop0;
                  }
                  §§goto(addr95);
               }
            }
            this.§%!K§(param1);
            addr95:
            return;
            addr90:
         }
         while(true)
         {
            §§push(this.§7!=§);
            if(_loc4_)
            {
               §§pop().stop(param2);
               if(!(_loc3_ && this))
               {
                  if(!(_loc3_ && this))
                  {
                     break;
                  }
                  §§goto(addr61);
               }
               §§goto(addr65);
            }
            else
            {
               §§goto(addr90);
            }
         }
      }
      
      protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^c§.setVisibility(true);
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr90:
                           while(true)
                           {
                              §§push(Boolean(this.§7!=§));
                              if(!(_loc2_ || this))
                              {
                                 break;
                              }
                              if(_loc3_)
                              {
                                 continue loop2;
                              }
                              if(!_loc2_)
                              {
                                 continue loop1;
                              }
                           }
                        }
                     }
                     loop5:
                     while(true)
                     {
                        if(§§pop())
                        {
                           continue loop0;
                        }
                        this.onTransitionInComplete();
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              §§goto(addr19);
                           }
                           continue loop0;
                        }
                        addr71:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              break loop5;
                           }
                           §§goto(addr90);
                        }
                     }
                     addr19:
                     return;
                  }
               }
            }
         }
         while(true)
         {
            this.§%!K§(this.getTransitionInData());
            §§goto(addr71);
         }
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§6y§ = null;
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(Boolean(§§pop()));
               if(_loc4_ || param2)
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                     }
                  }
                  §§goto(addr47);
               }
               §§pop();
               if(_loc4_ || param1)
               {
                  §§push(Boolean(this.§7!=§));
               }
               §§goto(addr50);
            }
            addr47:
            if(§§pop())
            {
               if(_loc4_)
               {
                  addr50:
                  _loc3_ = new §6y§();
                  if(!(_loc5_ && this))
                  {
                     _loc3_.startLabel = §`#?§.§8#@§();
                     while(true)
                     {
                        _loc3_.§%#N§ = §`#?§.§1#$§;
                        addr112:
                        while(true)
                        {
                           _loc3_.§`"i§ = §`#?§.§;!&§;
                        }
                     }
                     addr127:
                  }
                  loop2:
                  while(true)
                  {
                     _loc3_.type = §6y§.§;X§;
                     loop3:
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           loop4:
                           while(true)
                           {
                              _loc3_.stageQuality = this.§^!`§;
                              while(!_loc5_)
                              {
                                 this.§2"z§(_loc3_,param2);
                                 if(_loc5_)
                                 {
                                    continue;
                                 }
                                 if(_loc5_)
                                 {
                                    break loop4;
                                 }
                                 if(_loc5_)
                                 {
                                    break loop3;
                                 }
                                 if(false)
                                 {
                                    continue loop4;
                                 }
                              }
                              continue loop2;
                           }
                           continue;
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr112);
                  }
               }
               else
               {
                  addr133:
                  this.onTransitionOutComplete();
               }
            }
            else
            {
               this.§^!d§();
               if(!_loc5_)
               {
                  §§goto(addr133);
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      protected function runTransition(param1:§^!q§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§7!=§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr101:
                        loop5:
                        while(true)
                        {
                           §§push(this.§`"B§ == §6y§.§8"@§);
                           if(!(_loc3_ && _loc3_))
                           {
                              if(_loc3_)
                              {
                                 continue;
                              }
                              if(!(_loc2_ || _loc3_))
                              {
                                 continue loop1;
                              }
                              §§push(!§§pop());
                              while(true)
                              {
                              }
                           }
                           while(§§pop())
                           {
                              if(_loc2_ || param1)
                              {
                                 continue loop0;
                              }
                              addr82:
                              if(!_loc3_)
                              {
                                 break;
                              }
                              continue loop5;
                           }
                           return;
                        }
                     }
                  }
                  §§goto(addr61);
               }
            }
         }
         §§goto(addr101);
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected final function §>" §() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.dispose();
            do
            {
               dispatchEvent(new §+#[§(§+#[§.§[%§,this));
            }
            while(!_loc2_);
            
         }
      }
      
      public function §9!J§() : void
      {
      }
   }
}
