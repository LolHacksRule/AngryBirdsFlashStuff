package §1" §
{
   import §"_§.§!"8§;
   import §#";§.§0"#§;
   import §&!<§.§]!M§;
   import §'V§.§=!r§;
   import §+V§.§-!g§;
   import §-"'§.§1d§;
   import §-"'§.§8!5§;
   import §-"'§.§<`§;
   import §-"'§.§<q§;
   import §-"'§.§]!_§;
   import §50§.StateMap;
   import §5u§.§-"#§;
   import §6!A§.§4!1§;
   import §6U§.§="4§;
   import §6]§.§,"0§;
   import §6]§.Base64;
   import §7!@§.§+`§;
   import §7t§.§7a§;
   import §;" §.§5L§;
   import §;" §.§>"0§;
   import §;" §.Quest;
   import §;b§.StateLevelEditor;
   import §;b§.StateLevelEditorTestPlay;
   import §<!1§.§0W§;
   import §?!'§.§]!]§;
   import §?!'§.§`![§;
   import §]" §.§?"-§;
   import §^!k§.§return§;
   import §^U§.§&y§;
   import §`!,§.§[!&§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   
   public class §4"?§ implements §4!x§
   {
       
      
      private var §[o§:Quest;
      
      private var §3?§:§?"-§;
      
      private var §9J§:§#!j§;
      
      private var §?W§:Vector.<DisplayObject>;
      
      private var §3!W§:Boolean = false;
      
      private var §0!&§:§<q§;
      
      private var §%">§:§]!_§;
      
      private var §!![§:§<`§;
      
      private var §,"&§:§1d§;
      
      private var §=1§:String;
      
      private var §[§:DisplayObject;
      
      private var §,!c§:§=!r§;
      
      private var §#t§:Boolean = false;
      
      private var §3!V§:§-!g§;
      
      private var §0!!§:Boolean = false;
      
      private const §&!z§:int = 4000;
      
      public function §4"?§(param1:§#!j§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?W§ = new Vector.<DisplayObject>();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§9J§ = param1;
                  loop2:
                  while(!(_loc3_ && param1))
                  {
                     this.§3?§ = new §?"-§(this.§9J§.§<!_§.§`!v§ as §return§,§]!M§.§"!V§.Views.View_QuestMenu[0],this.§9J§.§<!_§.§`!v§.container);
                     while(true)
                     {
                        this.§3?§.addEventListener(Event.SELECT,this.§<=§);
                        do
                        {
                           §5L§.§[E§.addEventListener(§[!&§.§#"5§,this.onQuestCompleted);
                        }
                        while(_loc3_);
                        
                        if(!(_loc3_ && _loc3_))
                        {
                           if(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public function initialize() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§9J§);
            while(true)
            {
               §§push(§§pop().§<!_§);
               addr255:
               while(true)
               {
                  §§push(§!"8§.CONTINUE);
                  addr257:
                  while(true)
                  {
                     §§pop().addEventListener(§§pop(),this.§4! §,false,1);
                  }
               }
            }
            addr254:
         }
         while(true)
         {
            §§push(this.§9J§);
            loop4:
            while(true)
            {
               §§push(§§pop().§<!_§);
               loop5:
               while(!_loc1_)
               {
                  §§push(§!"8§.CANCEL);
                  while(true)
                  {
                     §§pop().addEventListener(§§pop(),this.§]!$§);
                     loop7:
                     while(true)
                     {
                        §§push(this.§9J§);
                        loop8:
                        while(true)
                        {
                           §§push(§§pop().§<!_§);
                           loop9:
                           while(!_loc1_)
                           {
                              §§push(§!"8§.PUBLISH);
                              loop10:
                              while(true)
                              {
                                 §§pop().addEventListener(§§pop(),this.§2!>§);
                                 loop11:
                                 while(true)
                                 {
                                    §§push(this.§9J§);
                                    loop12:
                                    while(true)
                                    {
                                       §§push(§§pop().§0"!§);
                                       loop13:
                                       while(true)
                                       {
                                          §§push(§!"8§.§"`§);
                                          loop14:
                                          while(true)
                                          {
                                             §§pop().addEventListener(§§pop(),this.§?!&§);
                                             loop15:
                                             while(true)
                                             {
                                                §§push(this.§9J§);
                                                loop16:
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      §§push(§§pop().§0"!§);
                                                      if(!_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§!"8§.CHANGE);
                                                      if(!_loc1_)
                                                      {
                                                         §§pop().addEventListener(§§pop(),this.§,§);
                                                         loop17:
                                                         while(true)
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(this.§9J§);
                                                               continue loop4;
                                                            }
                                                            continue loop11;
                                                            loop23:
                                                            while(true)
                                                            {
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(this.§9J§);
                                                                  loop24:
                                                                  while(!_loc1_)
                                                                  {
                                                                     §§push(§§pop().§%8§);
                                                                     if(!_loc1_)
                                                                     {
                                                                        §§push(§!"8§.§3!?§);
                                                                        if(!(_loc1_ && this))
                                                                        {
                                                                           §§pop().addEventListener(§§pop(),this.§@<§);
                                                                           loop25:
                                                                           while(true)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 addr137:
                                                                                 if(_loc1_ && _loc1_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(this.§9J§);
                                                                                 loop26:
                                                                                 while(!_loc1_)
                                                                                 {
                                                                                    §§push(§§pop().§<!_§);
                                                                                    while(!(_loc1_ && _loc1_))
                                                                                    {
                                                                                       §§push(§§pop().§<!_§);
                                                                                       continue loop10;
                                                                                       if(!(_loc1_ && _loc2_))
                                                                                       {
                                                                                          §§pop().addEventListener(KeyboardEvent.KEY_DOWN,this.§[H§);
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             continue loop25;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§9J§);
                                                                                             if(_loc1_ && this)
                                                                                             {
                                                                                                continue loop26;
                                                                                             }
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                continue loop24;
                                                                                             }
                                                                                             if(_loc1_)
                                                                                             {
                                                                                                continue loop12;
                                                                                             }
                                                                                             if(_loc1_ && _loc1_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr45);
                                                                                          }
                                                                                          continue loop4;
                                                                                          continue loop26;
                                                                                       }
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                                 continue loop16;
                                                                              }
                                                                              continue loop23;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§9J§);
                                                                              continue loop12;
                                                                              §§goto(addr137);
                                                                           }
                                                                           addr187:
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§!"8§.§4]§);
                                                                        }
                                                                        addr156:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop().addEventListener(§§pop(),this.onPhysicsEnabled);
                                                                        continue loop23;
                                                                     }
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               continue loop17;
                                                            }
                                                            continue loop15;
                                                         }
                                                         continue loop7;
                                                      }
                                                      continue loop14;
                                                   }
                                                   §§goto(addr254);
                                                }
                                                continue loop13;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop5;
                        }
                     }
                  }
               }
               §§goto(addr255);
            }
         }
      }
      
      public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(§!!2§.§[E§);
            while(true)
            {
               §§push(this.§?!p§);
               addr437:
               while(true)
               {
                  §§push(§!!2§.SAVE);
                  addr439:
                  while(true)
                  {
                     §§pop().§[j§(§§pop(),§§pop());
                  }
               }
               addr317:
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §§push(this.§&f§);
               loop21:
               while(true)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     if(_loc2_ || _loc1_)
                     {
                        if(_loc2_)
                        {
                           §§push(§!!2§.CATEGORY);
                           loop22:
                           for(; _loc2_; while(_loc2_ || _loc1_)
                           {
                              §§pop().§[j§(§§pop(),§§pop());
                              §§goto(addr306);
                           })
                           {
                              §§pop().§[j§(§§pop(),§§pop());
                              loop23:
                              while(true)
                              {
                                 §§push(§!!2§.§[E§);
                                 loop24:
                                 while(!_loc1_)
                                 {
                                    §§push(this.§["&§);
                                    continue loop21;
                                    loop27:
                                    while(true)
                                    {
                                       §§push(§!!2§.§[E§);
                                       if(!_loc1_)
                                       {
                                          §§push(this.§^"#§);
                                          if(!_loc1_)
                                          {
                                             §§push(§!!2§.CREATE_UNDO);
                                             if(_loc2_)
                                             {
                                                if(_loc2_)
                                                {
                                                   §§pop().§[j§(§§pop(),§§pop());
                                                   loop28:
                                                   while(true)
                                                   {
                                                      if(!this.§[o§)
                                                      {
                                                         continue loop27;
                                                      }
                                                      loop31:
                                                      while(true)
                                                      {
                                                         this.§3?§.init(this.§[o§);
                                                         loop32:
                                                         while(_loc2_)
                                                         {
                                                            §§push(this.§,"#§ == Quest.§0"?§);
                                                            loop33:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop34:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr239:
                                                                     while(true)
                                                                     {
                                                                        §§push(StateLevelEditorTestPlay.§3!%§);
                                                                        addr208:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           addr209:
                                                                           while(_loc2_)
                                                                           {
                                                                           }
                                                                           continue loop34;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               loop38:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     §§push(this.§9J§);
                                                                     loop39:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().§<!_§);
                                                                        loop40:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().§"p§());
                                                                           loop41:
                                                                           while(true)
                                                                           {
                                                                              §§pop().§<!k§();
                                                                              while(true)
                                                                              {
                                                                                 if(_loc2_ || _loc1_)
                                                                                 {
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       continue loop32;
                                                                                    }
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       §§push(this.§`c§());
                                                                                       if(!(_loc1_ && this))
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                continue loop33;
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc1_)
                                                                                                {
                                                                                                   loop46:
                                                                                                   while(_loc2_)
                                                                                                   {
                                                                                                      §§push(this.§9J§);
                                                                                                      loop47:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc2_ || _loc1_)
                                                                                                         {
                                                                                                            §§push(§§pop().§<!_§);
                                                                                                            while(!_loc1_)
                                                                                                            {
                                                                                                               §§push(§§pop().§"p§());
                                                                                                               while(_loc2_ || this)
                                                                                                               {
                                                                                                                  §§pop().getItemByName("Categories2").setVisibility(true);
                                                                                                                  §§push(§§pop().§"p§());
                                                                                                                  continue loop47;
                                                                                                                  if(_loc2_ || _loc1_)
                                                                                                                  {
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        §§pop().§ !c§("Birds");
                                                                                                                        loop51:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc1_ && _loc2_)
                                                                                                                           {
                                                                                                                              continue loop47;
                                                                                                                           }
                                                                                                                           if(!(_loc2_ || this))
                                                                                                                           {
                                                                                                                              continue loop46;
                                                                                                                           }
                                                                                                                           if(_loc1_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              this.§4b§();
                                                                                                                              if(!_loc1_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue loop51;
                                                                                                                           }
                                                                                                                           §§goto(addr34);
                                                                                                                        }
                                                                                                                        continue loop23;
                                                                                                                        addr74:
                                                                                                                     }
                                                                                                                     continue loop41;
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().getItemByName("Categories").setVisibility(false);
                                                                                                                  continue loop46;
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop40;
                                                                                                            addr102:
                                                                                                         }
                                                                                                         continue loop39;
                                                                                                      }
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   if(!(_loc2_ || this))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(_loc1_)
                                                                                                   {
                                                                                                      continue loop31;
                                                                                                   }
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      continue loop28;
                                                                                                   }
                                                                                                   if(!_loc1_)
                                                                                                   {
                                                                                                      §§push(this.§9J§);
                                                                                                      continue loop39;
                                                                                                   }
                                                                                                   addr440:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§!!2§.§[E§);
                                                                                                      addr415:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§+6§);
                                                                                                         addr417:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§!!2§.CONTINUE);
                                                                                                            addr419:
                                                                                                            while(_loc2_)
                                                                                                            {
                                                                                                               §§pop().§[j§(§§pop(),§§pop());
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§!!2§.§[E§);
                                                                                                                  addr399:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§[?§);
                                                                                                                     break loop21;
                                                                                                                  }
                                                                                                                  addr34:
                                                                                                                  if(!(_loc1_ && _loc1_))
                                                                                                                  {
                                                                                                                     §§goto(addr25);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr439);
                                                                                                         }
                                                                                                         addr358:
                                                                                                         if(!(_loc2_ || _loc1_))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§push(this.§[Q§);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§!!2§.DELETE);
                                                                                                            break loop22;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                if(_loc1_ && _loc1_)
                                                                                                {
                                                                                                   continue loop27;
                                                                                                }
                                                                                                addr197:
                                                                                                if(_loc2_ || _loc1_)
                                                                                                {
                                                                                                   addr25:
                                                                                                   return;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§!!2§.§[E§);
                                                                                                   break loop24;
                                                                                                   §§goto(addr197);
                                                                                                }
                                                                                                addr377:
                                                                                                §§goto(addr432);
                                                                                             }
                                                                                             §§goto(addr29);
                                                                                          }
                                                                                          §§goto(addr208);
                                                                                       }
                                                                                       §§goto(addr209);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§!!2§.§[E§);
                                                                                       addr351:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc2_ || _loc1_)
                                                                                          {
                                                                                             §§goto(addr358);
                                                                                          }
                                                                                          addr381:
                                                                                          while(_loc2_)
                                                                                          {
                                                                                             §§push(this.§+'§);
                                                                                             while(_loc2_ || _loc2_)
                                                                                             {
                                                                                                §§push(§!!2§.ADD);
                                                                                                break loop27;
                                                                                             }
                                                                                             §§goto(addr417);
                                                                                          }
                                                                                          §§goto(addr399);
                                                                                          break loop24;
                                                                                       }
                                                                                       §§goto(addr415);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr227:
                                                                              if(_loc2_)
                                                                              {
                                                                                 break loop38;
                                                                              }
                                                                              §§goto(addr239);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §0"#§.§<"0§(StateLevelEditor.§&!d§);
                                                                  §§goto(addr227);
                                                               }
                                                               this.§?!P§();
                                                               §§goto(addr190);
                                                            }
                                                         }
                                                         addr411:
                                                         while(true)
                                                         {
                                                            §§goto(addr381);
                                                         }
                                                      }
                                                   }
                                                }
                                                break;
                                             }
                                             continue loop22;
                                          }
                                          continue loop21;
                                       }
                                       continue loop24;
                                    }
                                    while(true)
                                    {
                                       §§pop().§[j§(§§pop(),§§pop());
                                       §§goto(addr395);
                                    }
                                 }
                                 while(!(_loc1_ && _loc1_))
                                 {
                                    §§goto(addr317);
                                 }
                                 §§goto(addr351);
                              }
                           }
                           while(!(_loc1_ && _loc2_))
                           {
                              §§pop().§[j§(§§pop(),§§pop());
                              §§goto(addr377);
                           }
                           while(!(_loc1_ && this))
                           {
                              §§pop().§[j§(§§pop(),§§pop());
                              §§goto(addr411);
                           }
                           §§goto(addr419);
                           addr403:
                        }
                        else
                        {
                           §§goto(addr437);
                        }
                        §§goto(addr439);
                     }
                     break;
                  }
                  §§goto(addr385);
               }
               while(true)
               {
                  §§goto(addr403);
               }
            }
         }
         §§goto(addr440);
      }
      
      private function §[H§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1.charCode == "f".charCodeAt())
            {
               loop0:
               while(true)
               {
                  StateLevelEditorTestPlay.§3!%§ = true;
                  loop1:
                  while(true)
                  {
                     this.§?!P§();
                     loop2:
                     while(true)
                     {
                        §§push(this.§9J§);
                        while(true)
                        {
                           §§push(§§pop().§<!_§);
                           addr121:
                           while(true)
                           {
                              §§push(§§pop().§"p§());
                              addr122:
                              while(true)
                              {
                                 §§pop().§5!Q§();
                                 addr123:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr80:
                           §§push(this.§9J§);
                           if(!_loc2_)
                           {
                              continue;
                           }
                           §§push(§§pop().§<!_§);
                           if(_loc2_)
                           {
                              §§push(§§pop().§"p§());
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr39:
                                 §§pop().§ !c§("Blocks");
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(!_loc2_)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          if(_loc2_ || this)
                                          {
                                             this.§,§();
                                             while(true)
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   if(!(_loc2_ || param1))
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr80);
                                                }
                                                else
                                                {
                                                   addr116:
                                                }
                                                addr81:
                                                while(param1.charCode == "w".charCodeAt())
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      this.§[o§.§#!"§();
                                                      continue loop9;
                                                   }
                                                   §§goto(addr123);
                                                   §§goto(addr116);
                                                }
                                                addr19:
                                                return;
                                                §§goto(addr39);
                                             }
                                             continue loop1;
                                             addr56:
                                          }
                                          addr113:
                                          if(!_loc3_)
                                          {
                                             §§goto(addr115);
                                          }
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    if(!_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr19);
                                 }
                                 §§goto(addr56);
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr121);
                        }
                     }
                  }
               }
            }
            while(true)
            {
               if(this.§,"#§ == Quest.§'!X§)
               {
                  §§goto(addr81);
               }
               §§goto(addr113);
               §§goto(addr123);
            }
            addr115:
            return;
         }
         §§goto(addr52);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§0!!§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§push(this.§[o§);
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§9J§.§%8§.§'[§());
                           if(_loc3_)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§push(!§§pop());
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop6:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             §§pop();
                                             while(true)
                                             {
                                                §§push(this.§,"#§);
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(Quest.§;!b§);
                                                   addr131:
                                                   addr152:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                   }
                                                   loop26:
                                                   while(true)
                                                   {
                                                      §§push(this.§,"#§);
                                                      if(_loc2_ && _loc2_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      §§push(Quest.§`!$§);
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(!_loc2_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr133:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!(_loc3_ || this))
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     while(!_loc2_)
                                                                     {
                                                                        §§pop();
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_ || this)
                                                                           {
                                                                              continue loop26;
                                                                           }
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              this.play();
                                                                              while(true)
                                                                              {
                                                                                 if(_loc2_ && _loc3_)
                                                                                 {
                                                                                    loop25:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§#t§);
                                                                                       addr208:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                this.§0!!§ = false;
                                                                                                continue loop15;
                                                                                             }
                                                                                             addr209:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr24);
                                                                                             }
                                                                                             addr153:
                                                                                          }
                                                                                          continue loop25;
                                                                                       }
                                                                                    }
                                                                                    addr206:
                                                                                 }
                                                                                 return;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop0;
                                                                     addr142:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr108:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        §§goto(addr110);
                                                                     }
                                                                  }
                                                                  §§goto(addr68);
                                                               }
                                                               continue loop6;
                                                               addr133:
                                                            }
                                                            §§goto(addr108);
                                                         }
                                                         §§goto(addr142);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr131);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr133);
                                       }
                                    }
                                 }
                                 addr173:
                              }
                              §§goto(addr208);
                           }
                           §§goto(addr173);
                        }
                     }
                     addr24:
                     loop23:
                     while(true)
                     {
                        this.§3?§.update(param1);
                        if(!_loc2_)
                        {
                           addr31:
                           if(_loc3_ || param1)
                           {
                              continue loop14;
                           }
                           addr110:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 continue loop1;
                              }
                              continue loop16;
                              §§goto(addr31);
                           }
                           continue loop1;
                        }
                        loop22:
                        while(_loc3_ || _loc3_)
                        {
                           if(_loc3_)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 continue loop23;
                              }
                              continue loop2;
                           }
                           addr123:
                           while(_loc3_)
                           {
                              while(true)
                              {
                                 this.§2!B§(this.§[o§.getHUDs());
                                 break loop22;
                              }
                           }
                           continue loop8;
                        }
                        while(true)
                        {
                           this.§ §();
                           §§goto(addr51);
                        }
                        addr51:
                     }
                     addr47:
                     return;
                  }
               }
               §§goto(addr206);
            }
         }
         §§goto(addr152);
      }
      
      private function §2!B§(param1:Vector.<DisplayObject>) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:DisplayObject = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§?W§;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc4_,_loc3_));
            if(_loc6_)
            {
               if(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc3_,_loc4_);
                  if(!_loc5_)
                  {
                     if(param1.indexOf(_loc2_) == -1)
                     {
                        if(!_loc5_)
                        {
                           this.§9J§.§<!_§.§`!v§.movieClip.removeChild(_loc2_);
                        }
                     }
                  }
                  continue;
               }
               if(!(_loc5_ && _loc2_))
               {
                  if(!_loc5_)
                  {
                     if(!(_loc5_ && this))
                     {
                        this.§?W§ = param1;
                        if(!_loc5_)
                        {
                           addr86:
                           _loc3_ = 0;
                           if(_loc6_)
                           {
                              addr90:
                              _loc4_ = this.§?W§;
                              while(true)
                              {
                                 §§push(§§hasnext(_loc4_,_loc3_));
                                 break loop0;
                              }
                              addr141:
                           }
                        }
                        return;
                     }
                     §§goto(addr86);
                  }
               }
               §§goto(addr90);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc2_ = §§nextvalue(_loc3_,_loc4_);
               if(!(_loc5_ && _loc2_))
               {
                  if(_loc2_.parent != this.§9J§.§<!_§.§`!v§.movieClip)
                  {
                     if(!(_loc5_ && _loc2_))
                     {
                        this.§9J§.§<!_§.§`!v§.movieClip.addChildAt(_loc2_,0);
                     }
                  }
               }
               continue;
            }
            §§goto(addr90);
         }
      }
      
      public function § §() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:DisplayObject = this.§[o§.getNextInstruction();
         if(_loc2_ || _loc3_)
         {
            §§push(Boolean(this.§[§));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr266:
                        while(true)
                        {
                           §§push(this.§[§ == _loc1_);
                           addr232:
                           while(true)
                           {
                              §§push(!§§pop());
                              addr233:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                     }
                     addr265:
                  }
                  while(true)
                  {
                     loop7:
                     while(true)
                     {
                        §§push(§§pop());
                        loop8:
                        while(!(_loc3_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              loop9:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    §§pop();
                                    while(true)
                                    {
                                       §§push(Boolean(this.§[§.parent));
                                       loop16:
                                       while(!(_loc3_ && _loc2_))
                                       {
                                          if(this.§[§)
                                          {
                                             if(_loc2_)
                                             {
                                                if(!(_loc3_ && this))
                                                {
                                                   if(_loc3_ && _loc1_)
                                                   {
                                                      break loop9;
                                                   }
                                                   if(!this.§[§.parent)
                                                   {
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§push(this.§9J§);
                                                         loop18:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§<!_§);
                                                            loop19:
                                                            while(true)
                                                            {
                                                               §§pop().§`!v§.movieClip.addChild(this.§[§);
                                                               addr193:
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  if(_loc2_ || _loc3_)
                                                                  {
                                                                     addr200:
                                                                     while(true)
                                                                     {
                                                                        this.§[§.visible = !this.§9J§.§%8§.§'[§();
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           this.§[§.visible = this.§[§.visible && !this.§#t§;
                                                                           loop22:
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 continue loop17;
                                                                              }
                                                                              if(!_loc2_)
                                                                              {
                                                                                 continue loop16;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 addr94:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(!this.§3!V§.parent);
                                                                                    loop25:
                                                                                    for(; !(_loc3_ && _loc1_); if(_loc3_ && _loc3_)
                                                                                    {
                                                                                       continue;
                                                                                    },§§goto(addr58))
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§push(§§pop());
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          continue loop8;
                                                                                       }
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          while(§§pop())
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                if(_loc3_ && _loc2_)
                                                                                                {
                                                                                                   continue loop23;
                                                                                                }
                                                                                                §§push(this.§9J§);
                                                                                                if(!(_loc2_ || this))
                                                                                                {
                                                                                                   break loop22;
                                                                                                }
                                                                                                §§push(§§pop().§<!_§);
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   continue loop19;
                                                                                                }
                                                                                                §§pop().§`!v§.movieClip.addChild(this.§3!V§);
                                                                                             }
                                                                                             addr86:
                                                                                             if(_loc2_ || _loc2_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             loop27:
                                                                                             for(; !_loc3_; §§goto(addr86))
                                                                                             {
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   continue loop21;
                                                                                                }
                                                                                                §§push(this.§[o§.§+!N§);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   continue loop25;
                                                                                                }
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§pop();
                                                                                                         continue loop27;
                                                                                                      }
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   continue loop7;
                                                                                                   addr112:
                                                                                                }
                                                                                                addr41:
                                                                                                if(!(_loc3_ && _loc1_))
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      §§push(!§§pop());
                                                                                                      continue loop25;
                                                                                                   }
                                                                                                   §§goto(addr232);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§[§.parent.removeChild(this.§[§);
                                                                                                            addr226:
                                                                                                            while(true)
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                         addr220:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§[§ = _loc1_;
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      §§goto(addr41);
                                                                                                   }
                                                                                                   addr219:
                                                                                                }
                                                                                             }
                                                                                             continue loop22;
                                                                                          }
                                                                                          return;
                                                                                          addr58:
                                                                                       }
                                                                                       §§goto(addr112);
                                                                                    }
                                                                                    §§goto(addr233);
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop18;
                                                                        }
                                                                        §§goto(addr200);
                                                                     }
                                                                     addr151:
                                                                  }
                                                                  §§goto(addr226);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr151);
                                                }
                                                §§goto(addr220);
                                             }
                                             §§goto(addr193);
                                          }
                                          §§goto(addr94);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr265);
                                 }
                              }
                              §§goto(addr266);
                           }
                           while(true)
                           {
                              §§goto(addr219);
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr150);
      }
      
      public function §[i§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§[o§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr42:
                     §§push(this.§[o§.§[i§());
                     if(!(_loc2_ && this))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr61:
                     return 0;
                  }
                  return §§pop();
               }
               §§goto(addr61);
            }
         }
         §§goto(addr42);
      }
      
      private function §,§(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.update(0);
            while(true)
            {
               StateLevelEditorTestPlay.§3!%§ = false;
               loop1:
               while(_loc2_ || param1)
               {
                  §§push(this.§[o§);
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    §§push(this.§`c§());
                                    if(_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop4;
                                       }
                                       if(_loc3_ && _loc2_)
                                       {
                                          continue loop3;
                                       }
                                       §§push(!§§pop());
                                       while(true)
                                       {
                                       }
                                    }
                                    while(§§pop())
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop5;
                                          }
                                          §§push(this.§[o§);
                                          if(_loc3_)
                                          {
                                             continue loop2;
                                          }
                                          §§pop().§-v§();
                                       }
                                       break loop5;
                                    }
                                    break;
                                 }
                                 continue loop1;
                              }
                              return;
                           }
                        }
                        §§goto(addr38);
                     }
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      private function §2!>§(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:BitmapData = null;
         var _loc4_:ByteArray = null;
         if(_loc5_)
         {
            this.§[o§.onPhysicsEnabled();
            if(_loc5_)
            {
               §§goto(addr32);
            }
            §§goto(addr38);
         }
         addr32:
         if(this.§,"&§.§3"8§().length > 0)
         {
            addr38:
            _loc2_ = this.§9J§.§0"!§.§9!h§();
            if(_loc5_)
            {
               if(!_loc2_.valid)
               {
                  addr49:
                  _loc2_ = new Object();
                  if(_loc5_)
                  {
                     §§goto(addr100);
                  }
                  §§goto(addr111);
               }
               else
               {
                  _loc3_ = StateLevelEditorTestPlay.§5"+§();
                  if(!_loc6_)
                  {
                     if(_loc3_ == null)
                     {
                        addr75:
                        _loc3_ = new BitmapData(100,100);
                     }
                     _loc4_ = §="4§.encode(_loc3_);
                     if(!_loc6_)
                     {
                        _loc2_.screen = Base64.§7o§(_loc4_);
                        if(!_loc6_)
                        {
                           _loc2_.name = this.§,"&§.§3"8§();
                        }
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr75);
               }
               if(!_loc6_)
               {
                  if(this.§[o§.§+!N§)
                  {
                     if(_loc5_)
                     {
                        addr111:
                        §§push(§5L§.§[E§);
                        if(!_loc6_)
                        {
                           §§pop().publishSandbox(_loc2_);
                           if(!_loc5_)
                           {
                           }
                        }
                        else
                        {
                           addr132:
                           §§pop().completeQuest(_loc2_);
                        }
                     }
                     §§goto(addr134);
                  }
                  else
                  {
                     §§push(§5L§.§[E§);
                  }
                  §§goto(addr132);
               }
               §§goto(addr134);
            }
            §§goto(addr49);
         }
         addr134:
      }
      
      private function §4b§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§8!5§ = null;
         if(!_loc3_)
         {
            if(this.§#t§)
            {
               if(_loc4_ || _loc3_)
               {
                  return;
               }
            }
         }
         var _loc1_:§>"0§ = this.§[o§.§-!a§();
         if(!_loc3_)
         {
            if(_loc1_)
            {
               addr52:
               _loc2_ = §]!]§.§04§(_loc1_);
               if(!_loc3_)
               {
                  _loc2_.§2"&§ = this.§?"§;
               }
               while(true)
               {
                  while(true)
                  {
                     this.§#t§ = true;
                     do
                     {
                        this.§3!V§.visible = false;
                     }
                     while(_loc3_);
                     
                     if(_loc3_ && _loc2_)
                     {
                        break;
                     }
                     if(true)
                     {
                        return;
                     }
                     addr96:
                  }
               }
            }
            §§goto(addr96);
         }
         §§goto(addr52);
      }
      
      private function §?"§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§#t§ = false;
            do
            {
               this.§3!V§.visible = true;
               do
               {
                  this.§4b§();
               }
               while(_loc1_);
               
            }
            while(_loc1_ && this);
            
         }
      }
      
      private function §?!P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§,"&§ = new §1d§(§]!M§.§"!V§.Views.PopupView_PrePublish[0],this.§9J§.§<!_§.§"p§(),this.§[o§);
            while(true)
            {
               this.§,"&§.open();
               §§goto(addr61);
            }
         }
         addr61:
         while(true)
         {
            this.§3?§.hide();
            if(!(_loc2_ && _loc1_))
            {
               if(!(_loc2_ && _loc2_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get §;!1§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§[o§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     §§goto(addr53);
                  }
               }
               return "";
            }
            §§goto(addr53);
         }
         addr53:
         return this.§[o§.§;!1§;
      }
      
      public function §[?§(param1:§7a§ = null) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§[o§);
            loop0:
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(this.§[o§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().§;!1§);
                     loop3:
                     while(true)
                     {
                        §§push(Quest.§`!$§);
                        loop4:
                        while(true)
                        {
                           §§push(§§pop() == §§pop());
                           loop5:
                           while(true)
                           {
                              §§push(§§pop());
                              loop6:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr380:
                                       while(true)
                                       {
                                          §§push(this.§[o§);
                                          addr326:
                                          while(true)
                                          {
                                             if(!(_loc2_ || this))
                                             {
                                                continue loop2;
                                             }
                                             if(!_loc2_)
                                             {
                                                continue loop0;
                                             }
                                             §§push(§§pop().§;!1§);
                                             if(!(_loc2_ || _loc3_))
                                             {
                                                continue loop3;
                                             }
                                             §§push(Quest.§[R§);
                                             if(!(_loc2_ || param1))
                                             {
                                                continue loop4;
                                             }
                                             §§push(§§pop() == §§pop());
                                          }
                                       }
                                    }
                                    addr379:
                                 }
                                 while(true)
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(Boolean(param1));
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§push(§§pop());
                                                   loop12:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            while(true)
                                                            {
                                                               §§push(param1.§!9§());
                                                               loop15:
                                                               for(; _loc2_; if(_loc2_ || _loc2_)
                                                               {
                                                                  return §§pop();
                                                               })
                                                               {
                                                                  §§push(!§§pop());
                                                                  while(true)
                                                                  {
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(param1));
                                                                              loop19:
                                                                              while(_loc2_ || this)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 loop20:
                                                                                 for(; !_loc3_; if(_loc3_ && _loc3_)
                                                                                 {
                                                                                    continue;
                                                                                 },if(_loc3_ && param1)
                                                                                 {
                                                                                    continue loop6;
                                                                                 },if(§§pop())
                                                                                 {
                                                                                    §§goto(addr229);
                                                                                 },§§goto(addr172))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop21:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          loop22:
                                                                                          while(_loc2_)
                                                                                          {
                                                                                             §§push(param1.isTexture());
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                loop24:
                                                                                                while(!_loc3_)
                                                                                                {
                                                                                                   if(_loc2_ || this)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         loop26:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               loop27:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  loop28:
                                                                                                                  while(_loc2_)
                                                                                                                  {
                                                                                                                     §§push(this.§3!W§);
                                                                                                                     loop29:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(!§§pop());
                                                                                                                        loop43:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc3_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr165:
                                                                                                                              if(!(_loc3_ && param1))
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             loop36:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc2_ || this)
                                                                                                                                                {
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      addr355:
                                                                                                                                                      §§push(false);
                                                                                                                                                      break loop15;
                                                                                                                                                   }
                                                                                                                                                   §§push(param1.§'5§());
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc2_)
                                                                                                                                                         {
                                                                                                                                                            continue loop27;
                                                                                                                                                         }
                                                                                                                                                         §§push(!§§pop());
                                                                                                                                                         loop37:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc3_)
                                                                                                                                                            {
                                                                                                                                                               continue loop43;
                                                                                                                                                            }
                                                                                                                                                            if(_loc3_ && this)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            while(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§[o§);
                                                                                                                                                                  if(!(_loc2_ || param1))
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop().§[?§(param1));
                                                                                                                                                                  continue loop37;
                                                                                                                                                                  addr143:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr326);
                                                                                                                                                            }
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(false);
                                                                                                                                                                     break loop36;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr253:
                                                                                                                                                               }
                                                                                                                                                               if(!(_loc3_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  addr124:
                                                                                                                                                                  §§push(false);
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop21;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop28;
                                                                                                                                                               continue loop15;
                                                                                                                                                               break loop0;
                                                                                                                                                            }
                                                                                                                                                            addr239:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc2_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§`c§());
                                                                                                                                                                  if(!(_loc3_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                        continue loop43;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop13;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop43;
                                                                                                                                                               }
                                                                                                                                                               continue loop18;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Boolean(param1));
                                                                                                                                                               if(_loc2_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                     addr212:
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop20;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop26;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop6;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop17;
                                                                                                                                                            §§goto(addr103);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr253);
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc3_ && param1)
                                                                                                                                                         {
                                                                                                                                                            break loop36;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc2_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§pop();
                                                                                                                                                         §§goto(addr239);
                                                                                                                                                      }
                                                                                                                                                      continue loop9;
                                                                                                                                                      addr229:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr124);
                                                                                                                                                }
                                                                                                                                                §§goto(addr198);
                                                                                                                                             }
                                                                                                                                             return §§pop();
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr110);
                                                                                                                                    }
                                                                                                                                    §§goto(addr212);
                                                                                                                                    §§goto(addr165);
                                                                                                                                 }
                                                                                                                                 continue loop29;
                                                                                                                                 addr172:
                                                                                                                              }
                                                                                                                              continue loop24;
                                                                                                                           }
                                                                                                                           continue loop29;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop22;
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr252);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr277:
                                                                                                   }
                                                                                                   §§goto(addr312);
                                                                                                }
                                                                                                continue loop19;
                                                                                             }
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr277);
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                              §§goto(addr385);
                                                                           }
                                                                        }
                                                                        §§goto(addr312);
                                                                     }
                                                                  }
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  return §§pop();
                                                               }
                                                               continue loop5;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr309);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr379);
                                                }
                                                §§goto(addr380);
                                             }
                                          }
                                       }
                                       §§goto(addr355);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            addr385:
            return §§pop();
            §§push(true);
         }
         §§goto(addr380);
      }
      
      private function §`c§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§=1§ == null);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function §+'§(param1:String = null) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§[o§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§[o§);
                     addr221:
                     loop2:
                     while(true)
                     {
                        §§push(§§pop().§;!1§);
                        addr222:
                        while(true)
                        {
                           §§push(Quest.§`!$§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop() == §§pop());
                              addr225:
                              while(true)
                              {
                                 §§push(§§pop());
                                 addr226:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr228:
                                          while(true)
                                          {
                                             if(_loc2_ && this)
                                             {
                                                §§push(true);
                                             }
                                             else
                                             {
                                                addr249:
                                             }
                                             §§push(this.§[o§);
                                             loop9:
                                             while(_loc3_)
                                             {
                                                §§push(§§pop().§;!1§);
                                                while(true)
                                                {
                                                   §§push(Quest.§[R§);
                                                   if(!_loc2_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(!_loc2_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§[o§);
                                                                  if(!_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop0;
                                                                  addr217:
                                                               }
                                                               continue loop9;
                                                            }
                                                            §§push(false);
                                                         }
                                                         addr211:
                                                      }
                                                      addr214:
                                                      return §§pop();
                                                   }
                                                   break;
                                                }
                                                continue loop4;
                                             }
                                             continue loop2;
                                          }
                                          addr250:
                                          return §§pop();
                                       }
                                       addr227:
                                    }
                                    §§goto(addr211);
                                 }
                              }
                           }
                        }
                     }
                  }
                  addr218:
               }
               §§goto(addr249);
            }
         }
         §§goto(addr152);
      }
      
      public function §[Q§(param1:§7a§ = null) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§[?§(param1));
            if(_loc3_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  §§push(§§pop());
                  loop1:
                  while(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§[o§);
                           loop4:
                           while(true)
                           {
                              §§push(!§§pop());
                              loop5:
                              while(true)
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop());
                                       if(_loc2_ && _loc3_)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          break loop1;
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          if(_loc2_ && _loc3_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop().isObjectNeeded(param1));
                                          addr25:
                                          continue loop4;
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§push(!§§pop());
                                          }
                                          if(_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                break loop1;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       continue loop3;
                                    }
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  return §§pop();
               }
            }
            §§goto(addr102);
         }
         §§goto(addr83);
      }
      
      public function §+6§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§[o§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     return true;
                  }
                  else
                  {
                     loop1:
                     while(true)
                     {
                        addr143:
                        while(true)
                        {
                           §§push(this.§[o§);
                           loop3:
                           while(true)
                           {
                              §§push(§§pop().§;!1§);
                              addr147:
                              while(true)
                              {
                                 §§push(Quest.§0"?§);
                                 addr149:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    loop6:
                                    while(true)
                                    {
                                       if(!(_loc1_ && this))
                                       {
                                          §§push(§§pop());
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr160:
                                                   while(!_loc1_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§9J§.§0"!§.getBirdCount() < 1);
                                                         if(!_loc1_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  addr133:
                                                                  §§push(false);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§[o§);
                                                                     continue loop0;
                                                                     addr142:
                                                                  }
                                                                  addr63:
                                                               }
                                                            }
                                                            addr131:
                                                         }
                                                         §§goto(addr134);
                                                      }
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                             §§goto(addr131);
                                             addr103:
                                             §§push(§§pop());
                                             if(_loc2_ || this)
                                             {
                                                if(§§pop())
                                                {
                                                   addr59:
                                                   return §§pop();
                                                }
                                                while(true)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   §§pop();
                                                   if(!_loc1_)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            §§push(this.§[o§);
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            continue loop0;
                                                         }
                                                         §§goto(addr160);
                                                      }
                                                      §§goto(addr133);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr142);
                                                   }
                                                }
                                                addr134:
                                             }
                                             continue;
                                             while(!(_loc2_ || _loc1_))
                                             {
                                                continue loop8;
                                             }
                                             return §§pop();
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  return §§pop();
               }
               §§goto(addr143);
            }
         }
         §§goto(addr172);
      }
      
      public function §&f§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Array = ["Static","Snow","Backgrounds"];
         if(_loc4_ || _loc2_)
         {
            §§push(this.§[o§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc4_)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc3_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    §§pop();
                                    loop4:
                                    while(true)
                                    {
                                       §§push(_loc2_.indexOf(param1) == -1);
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       §§push(!§§pop());
                                       if(!(_loc4_ || param1))
                                       {
                                          break;
                                       }
                                       if(!_loc3_)
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc4_)
                                                {
                                                   §§push(false);
                                                   break loop4;
                                                }
                                                if(!_loc4_)
                                                {
                                                   continue loop4;
                                                }
                                                if(!_loc4_)
                                                {
                                                   continue loop0;
                                                }
                                                while(true)
                                                {
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(true);
                                                if(_loc3_ && _loc3_)
                                                {
                                                   break loop4;
                                                }
                                                if(_loc4_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      break loop5;
                                                   }
                                                   addr92:
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      continue loop2;
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                          }
                                          return §§pop();
                                          addr75:
                                       }
                                       continue loop3;
                                    }
                                    return §§pop();
                                 }
                                 addr129:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop0;
                                 }
                              }
                              continue loop0;
                           }
                           §§goto(addr75);
                        }
                        continue;
                     }
                  }
               }
               §§goto(addr129);
            }
         }
         §§goto(addr85);
      }
      
      public function §^"#§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§[o§);
            loop0:
            while(true)
            {
               §§push(§§pop().§;!1§);
               addr127:
               while(true)
               {
                  §§push(Quest.§`!$§);
                  addr129:
                  while(true)
                  {
                     §§push(§§pop() == §§pop());
                     loop3:
                     while(true)
                     {
                        §§push(!§§pop());
                        addr131:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 continue loop0;
                              }
                              addr133:
                           }
                           else
                           {
                              while(true)
                              {
                                 do
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc1_ || _loc1_)
                                       {
                                          if(!(_loc1_ || _loc2_))
                                          {
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             §§push(true);
                                          }
                                       }
                                       else
                                       {
                                          addr24:
                                          §§push(false);
                                          if(_loc1_ || this)
                                          {
                                             continue;
                                          }
                                       }
                                       while(!(_loc1_ || this))
                                       {
                                          continue loop3;
                                       }
                                       return §§pop();
                                       addr105:
                                    }
                                    §§goto(addr24);
                                 }
                                 while(_loc2_ && this);
                                 
                                 return §§pop();
                              }
                              addr88:
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr104);
      }
      
      public function §=D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§[o§);
            loop0:
            while(§§pop())
            {
               loop8:
               while(true)
               {
                  if(!(_loc1_ || _loc1_))
                  {
                     continue loop0;
                  }
                  §§push(§[!&§.§-@§);
                  loop9:
                  while(_loc1_ || this)
                  {
                     §§pop().removeEventListener(§§pop(),this.§=!+§);
                     while(_loc1_)
                     {
                        §§push(this.§[o§);
                        continue loop8;
                     }
                     while(true)
                     {
                        §§push(this.§9J§);
                        if(!_loc1_)
                        {
                           break;
                        }
                        §§pop().§^!b§.camera.§6"5§();
                        while(true)
                        {
                           §§push(this.§[o§);
                           addr214:
                           while(true)
                           {
                              §§push(§[!&§.§#+§);
                              break loop9;
                           }
                        }
                     }
                     while(true)
                     {
                        §§pop().§&!F§.§&",§();
                        §§goto(addr246);
                     }
                     addr246:
                  }
                  while(true)
                  {
                     §§pop().removeEventListener(§§pop(),this.§[!t§);
                     addr219:
                     while(true)
                     {
                        continue loop8;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr242);
      }
      
      private function §@!n§(param1:§[!&§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§4b§();
         }
      }
      
      private function §[!t§(param1:§[!&§ = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§4b§();
         }
         §§push(this.§[o§.§;!1§);
         if(!(_loc4_ && this))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            §§push(Boolean(param1));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr679:
                        while(true)
                        {
                           §§push(param1.§"!x§);
                           addr654:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                           }
                        }
                     }
                     addr678:
                  }
                  while(true)
                  {
                     loop6:
                     while(true)
                     {
                        if(!§§pop())
                        {
                        }
                        loop7:
                        while(true)
                        {
                           §§push(Boolean(param1));
                           loop8:
                           while(true)
                           {
                              §§push(§§pop());
                              loop9:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§pop();
                                       loop11:
                                       while(true)
                                       {
                                          §§push(param1.§"!x§);
                                          loop12:
                                          while(true)
                                          {
                                             §§push(Quest.§;!b§);
                                             loop13:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc3_ || param1)
                                                {
                                                   if(!(_loc3_ || _loc2_))
                                                   {
                                                      break;
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                   while(true)
                                                   {
                                                      loop64:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop65:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     while(true)
                                                                     {
                                                                        §§push(Quest.§0"?§);
                                                                        addr607:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           addr608:
                                                                           while(_loc3_)
                                                                           {
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        addr69:
                                                                        if(!(_loc3_ || _loc2_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(Quest.§;!b§);
                                                                        if(_loc3_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(§§pop() == §§pop())
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(!(_loc4_ && _loc2_))
                                                                                    {
                                                                                       if(_loc4_ && this)
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       §§push(this.§9J§);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop().§^!b§);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§pop().goToCastleView();
                                                                                                         addr115:
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               addr268:
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  if(!(_loc3_ || this))
                                                                                                                  {
                                                                                                                     addr558:
                                                                                                                     this.§9J§.§0"!§.§-v§();
                                                                                                                     this.§@<§();
                                                                                                                     addr540:
                                                                                                                     addr556:
                                                                                                                     if(!(_loc3_ || _loc3_))
                                                                                                                     {
                                                                                                                        loop29:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(param1.§"!x§);
                                                                                                                           loop30:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Quest.§4Z§);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                 loop32:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    loop33:
                                                                                                                                    for(; !§§pop(); if(!(_loc3_ || _loc3_))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    },if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       continue loop14;
                                                                                                                                    },if(_loc4_)
                                                                                                                                    {
                                                                                                                                       continue loop6;
                                                                                                                                    },§§goto(addr361),§§push(§§pop()))
                                                                                                                                    {
                                                                                                                                       §§push(_loc2_);
                                                                                                                                       loop34:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Quest.§`!$§);
                                                                                                                                          loop35:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop() == §§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   if(_loc4_ && this)
                                                                                                                                                   {
                                                                                                                                                      continue loop7;
                                                                                                                                                   }
                                                                                                                                                   addr535:
                                                                                                                                                   this.§9J§.§%8§.§9!G§(true);
                                                                                                                                                }
                                                                                                                                                addr45:
                                                                                                                                                return;
                                                                                                                                                addr536:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(param1));
                                                                                                                                                loop36:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   loop37:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         loop38:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc4_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               loop39:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(param1.§"!x§);
                                                                                                                                                                  loop40:
                                                                                                                                                                  for(; _loc3_; if(!(_loc3_ || param1))
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  },§§goto(addr254),§§push(Quest.§0"?§))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Quest.§`!$§);
                                                                                                                                                                     while(!(_loc4_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           addr484:
                                                                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop64;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop65;
                                                                                                                                                                           addr484:
                                                                                                                                                                        }
                                                                                                                                                                        continue loop32;
                                                                                                                                                                        loop49:
                                                                                                                                                                        while(!(_loc4_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                                                                           loop50:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc4_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 loop51:
                                                                                                                                                                                 while(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Boolean(param1));
                                                                                                                                                                                    if(_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr203:
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          if(_loc4_ && this)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(_loc3_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop51;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr203);
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop9;
                                                                                                                                                                                             addr361:
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop37;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop65;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                loop56:
                                                                                                                                                                                                while(!_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc4_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop38;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!_loc4_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         loop55:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc4_ && _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break loop51;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr234:
                                                                                                                                                                                                            if(_loc3_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(param1.§"!x§);
                                                                                                                                                                                                                  loop54:
                                                                                                                                                                                                                  while(_loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr127:
                                                                                                                                                                                                                        §§push(Quest.§0"?§);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc3_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    loop52:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc2_);
                                                                                                                                                                                                                                          if(!(_loc3_ || this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop54;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop40;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr62:
                                                                                                                                                                                                                                          if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr69);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          loop24:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(Quest.§[R§);
                                                                                                                                                                                                                                             addr583:
                                                                                                                                                                                                                                             while(§§pop() != §§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(Boolean(param1));
                                                                                                                                                                                                                                                while(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                   while(!_loc4_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop32;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                         continue loop29;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop1;
                                                                                                                                                                                                                                                   while(_loc3_ || _loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(param1.§"!x§);
                                                                                                                                                                                                                                                         break loop54;
                                                                                                                                                                                                                                                         §§goto(addr234);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop8;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr586:
                                                                                                                                                                                                                                             this.§3?§.hide();
                                                                                                                                                                                                                                             addr587:
                                                                                                                                                                                                                                             if(!(_loc3_ || _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr616:
                                                                                                                                                                                                                                                while(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §0"#§.§9"2§("BadPiggies_Building",StateLevelEditor.§&!d§,1000);
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr579:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop24;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop15;
                                                                                                                                                                                                                                                addr616:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr45);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr145:
                                                                                                                                                                                                                                       if(_loc4_ && _loc2_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop55;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc4_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc3_ || _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                this.§6t§();
                                                                                                                                                                                                                                                addr175:
                                                                                                                                                                                                                                                if(_loc3_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc4_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc3_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr602);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr45);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr587);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr540);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr488:
                                                                                                                                                                                                                                                   §§push(this.§3?§);
                                                                                                                                                                                                                                                   if(!(_loc4_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop().show();
                                                                                                                                                                                                                                                      loop57:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr460:
                                                                                                                                                                                                                                                         this.§9J§.§<!_§.§"p§().§ !c§("Wood");
                                                                                                                                                                                                                                                         addr464:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc4_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break loop38;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(this.§9J§);
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr434:
                                                                                                                                                                                                                                                               §§push(§§pop().§%8§);
                                                                                                                                                                                                                                                               §§push(false);
                                                                                                                                                                                                                                                               if(!(_loc3_ || param1))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§pop().§9!G§(§§pop());
                                                                                                                                                                                                                                                               addr412:
                                                                                                                                                                                                                                                               continue loop57;
                                                                                                                                                                                                                                                               addr412:
                                                                                                                                                                                                                                                               while(_loc3_ || _loc2_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop().§&!F§);
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§pop().§1!E§();
                                                                                                                                                                                                                                                                     break loop52;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr535);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr382:
                                                                                                                                                                                                                                                      this.§9J§.§^!b§.§?!<§(this.§[o§.§%!f§());
                                                                                                                                                                                                                                                      §§goto(addr45);
                                                                                                                                                                                                                                                      addr408:
                                                                                                                                                                                                                                                      addr386:
                                                                                                                                                                                                                                                      addr381:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr586);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr404:
                                                                                                                                                                                                                                                if(_loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr408);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr464);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr442);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr339:
                                                                                                                                                                                                                                             if(!_loc4_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(param1.§4!2§);
                                                                                                                                                                                                                                                continue loop40;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr386);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr262:
                                                                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc4_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                this.§9!!§();
                                                                                                                                                                                                                                                §§goto(addr268);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr586);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr536);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr45);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop39;
                                                                                                                                                                                                                                    addr143:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop56;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop49;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr254:
                                                                                                                                                                                                                           if(_loc3_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(§§pop() == §§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr262);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr194:
                                                                                                                                                                                                                              §§goto(addr45);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr583);
                                                                                                                                                                                                                           §§goto(addr127);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop13;
                                                                                                                                                                                                                        addr129:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr654);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr241:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr377);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(_loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Quest.§;!b§);
                                                                                                                                                                                                                  continue loop49;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop30;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop34;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop39;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr577);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr369);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop50;
                                                                                                                                                                                                addr218:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr143);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr574);
                                                                                                                                                                                          §§goto(addr369);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr608);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr218);
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc4_ && this)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop39;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(this.§9J§.§%8§);
                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(false);
                                                                                                                                                                                       if(!(_loc4_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().§9!G§(§§pop());
                                                                                                                                                                                          §§goto(addr339);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr434);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr535);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr535);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr434);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 while(_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop33;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr484);
                                                                                                                                                                                 addr347:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr488);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop36;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop35;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop12;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr678);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr679);
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr488);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr347);
                                                                                                                                                            §§push(Boolean(param1));
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr484);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr616);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr45);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr556);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr45);
                                                                                                                     addr560:
                                                                                                                  }
                                                                                                                  §§goto(addr194);
                                                                                                               }
                                                                                                               §§goto(addr560);
                                                                                                            }
                                                                                                            §§goto(addr45);
                                                                                                         }
                                                                                                         §§goto(addr175);
                                                                                                      }
                                                                                                      §§goto(addr382);
                                                                                                   }
                                                                                                   §§goto(addr558);
                                                                                                }
                                                                                                §§goto(addr460);
                                                                                             }
                                                                                             §§goto(addr390);
                                                                                          }
                                                                                          §§goto(addr381);
                                                                                       }
                                                                                       §§goto(addr315);
                                                                                    }
                                                                                    §§goto(addr145);
                                                                                 }
                                                                                 §§goto(addr115);
                                                                              }
                                                                              §§goto(addr45);
                                                                           }
                                                                           §§goto(addr607);
                                                                        }
                                                                        §§goto(addr129);
                                                                     }
                                                                  }
                                                               }
                                                               addr649:
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr612);
                                                               }
                                                               §§goto(addr579);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr649);
                                             }
                                             continue loop10;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr646);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr241);
      }
      
      private function §9!!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§9J§);
            loop0:
            while(true)
            {
               if(!§§pop().§0!;§.§'-§("Birds"))
               {
                  this.§0!!§ = true;
                  if(_loc1_)
                  {
                     if(!_loc1_)
                     {
                        addr118:
                        this.§=1§ = this.§9J§.§<!_§.§"p§().§8!9§();
                        loop10:
                        while(true)
                        {
                           §§push(this.§9J§);
                           loop8:
                           while(_loc1_)
                           {
                              §§push(§§pop().§<!_§);
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop().§"p§());
                                 loop4:
                                 while(true)
                                 {
                                    §§pop().getItemByName("Categories").setVisibility(false);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(this.§9J§);
                                       loop7:
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop8;
                                          }
                                          §§push(§§pop().§<!_§);
                                          loop5:
                                          while(true)
                                          {
                                             if(!_loc1_)
                                             {
                                                continue loop6;
                                             }
                                             addr73:
                                             §§push(§§pop().§"p§());
                                             while(_loc2_)
                                             {
                                                continue loop4;
                                                §§goto(addr73);
                                             }
                                             §§pop().getItemByName("Categories2").setVisibility(true);
                                             while(true)
                                             {
                                                if(!(_loc1_ || _loc2_))
                                                {
                                                   continue loop9;
                                                }
                                                if(!_loc1_)
                                                {
                                                   continue loop10;
                                                }
                                                §§push(this.§9J§);
                                                if(!(_loc1_ || this))
                                                {
                                                   continue loop7;
                                                }
                                                §§push(§§pop().§<!_§);
                                                if(_loc2_)
                                                {
                                                   continue loop5;
                                                }
                                                §§push(§§pop().§"p§());
                                                if(!_loc2_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr74);
                                             }
                                             addr74:
                                             addr50:
                                             §§pop().§ !c§("Birds");
                                             while(_loc2_)
                                             {
                                                §§goto(addr80);
                                                §§goto(addr50);
                                             }
                                             addr80:
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                     return;
                  }
                  §§goto(addr52);
               }
               §§goto(addr118);
            }
         }
         §§goto(addr64);
      }
      
      private function §6t§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§9J§);
            loop0:
            while(true)
            {
               §§push(§§pop().§<!_§);
               addr124:
               while(true)
               {
                  §§push(§§pop().§"p§());
                  addr125:
                  while(true)
                  {
                     §§pop().getItemByName("Categories").setVisibility(true);
                     addr129:
                     while(true)
                     {
                        §§push(this.§9J§);
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(this.§=1§ != null)
         {
            if(_loc1_ || this)
            {
               §§goto(addr42);
            }
            §§goto(addr84);
         }
         §§goto(addr19);
      }
      
      private function get §,"#§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§[o§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr48:
                     §§push(this.§[o§.§;!1§);
                     if(!_loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr52:
                     return Quest.§[R§;
                  }
                  return §§pop();
               }
               §§goto(addr52);
            }
         }
         §§goto(addr48);
      }
      
      private function §<=§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=D§();
         }
      }
      
      private function §#N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§9J§);
            loop0:
            while(true)
            {
               §§pop().§%8§.§9!G§(true);
               while(true)
               {
                  §§push(this.§[o§);
                  while(true)
                  {
                     §§pop().§ !E§();
                     loop3:
                     while(true)
                     {
                        §§push(this.§[o§);
                        if(_loc1_)
                        {
                           break;
                        }
                        §§pop().update(0);
                        loop4:
                        while(true)
                        {
                           §§push(this.§9J§);
                           loop5:
                           for(; _loc2_; loop9:
                           while(_loc2_ || _loc1_)
                           {
                              §§goto(addr87);
                              §§push(§§pop().§<!_§);
                              while(true)
                              {
                                 §§push(this.§9J§);
                                 if(!_loc2_)
                                 {
                                    continue loop9;
                                 }
                                 §§goto(addr34);
                              }
                              §§goto(addr65);
                           })
                           {
                              §§push(§§pop().§<!_§);
                              while(true)
                              {
                                 §§push(§§pop().§"p§());
                                 addr128:
                                 addr87:
                                 while(true)
                                 {
                                    §§pop().getItemByName("ButtonCheck").setVisibility(false);
                                    addr132:
                                    while(true)
                                    {
                                       §§push(this.§9J§);
                                       continue loop5;
                                    }
                                 }
                                 while(!(_loc1_ && _loc2_))
                                 {
                                    §§push(§§pop().§"p§());
                                    while(true)
                                    {
                                       §§pop().getItemByName("ButtonGravity").setVisibility(false);
                                       addr99:
                                       while(_loc2_ || this)
                                       {
                                          continue loop4;
                                       }
                                       §§goto(addr132);
                                    }
                                    §§push(§§pop().§<!_§);
                                    if(_loc1_ && this)
                                    {
                                       continue;
                                    }
                                    §§push(§§pop().§"p§());
                                    if(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          §§pop().getItemByName("Button_Cancel").setVisibility(true);
                                          if(!(_loc1_ && _loc1_))
                                          {
                                             if(_loc2_ || _loc2_)
                                             {
                                                return;
                                                addr65:
                                             }
                                             continue loop3;
                                          }
                                          §§goto(addr99);
                                       }
                                       else
                                       {
                                          §§goto(addr128);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr95);
                                    }
                                    §§goto(addr99);
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr120);
      }
      
      private function §=!+§(param1:§[!&§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§9J§);
            while(true)
            {
               §§push(§§pop().§<!_§);
               loop1:
               while(true)
               {
                  §§push(§§pop().§"p§());
                  loop2:
                  while(true)
                  {
                     §§pop().getItemByName("ButtonCheck").setVisibility(true);
                     while(true)
                     {
                        §§push(this.§9J§);
                        loop4:
                        while(true)
                        {
                           §§push(§§pop().§<!_§);
                           addr96:
                           while(!_loc2_)
                           {
                              §§push(§§pop().§"p§());
                              while(!(_loc2_ && param1))
                              {
                                 §§pop().getItemByName("ButtonGravity").setVisibility(true);
                                 while(true)
                                 {
                                    §§push(this.§9J§);
                                    continue loop4;
                                 }
                              }
                              continue loop2;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               if(!(_loc3_ || _loc2_))
               {
                  continue;
               }
               §§push(§§pop().§<!_§);
               if(!_loc2_)
               {
                  §§push(§§pop().§"p§());
                  if(_loc3_)
                  {
                     §§pop().getItemByName("Button_Cancel").setVisibility(false);
                     §§goto(addr82);
                  }
                  §§goto(addr99);
               }
               §§goto(addr96);
            }
         }
         §§goto(addr91);
      }
      
      private function §6!g§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§[o§);
            if(_loc1_)
            {
               §§push(§§pop().§-!t§());
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr56);
                     }
                  }
                  return "";
               }
            }
            §§goto(addr56);
         }
         addr56:
         return this.§[o§.§-!t§().description;
      }
      
      private function onQuestCompleted(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_)
         {
            §§pop().§§slot[2] = null;
            if(_loc4_ || _loc2_)
            {
               addr34:
               var event:Event = param1;
            }
            try
            {
               this.§,"&§.close();
               if(_loc4_)
               {
                  this.§,"&§ = null;
                  loop0:
                  while(true)
                  {
                     §§push(this.§9J§);
                     while(true)
                     {
                        §§pop().§<!_§.§"p§().§5!Q§();
                        loop2:
                        while(true)
                        {
                           §§push(this.§9J§);
                           if(_loc5_ && _loc2_)
                           {
                              break;
                           }
                           §§pop().§&!F§.§&",§();
                           loop3:
                           while(true)
                           {
                              this.§%">§ = new §]!_§(§]!M§.§"!V§.Views.PopupView_Rewards[0],this.§9J§.§<!_§.§"p§(),this.§[o§.§[" §().length + 1);
                              while(true)
                              {
                                 this.§%">§.open();
                                 loop5:
                                 for(; _loc4_; while(true)
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       continue loop3;
                                    }
                                    continue loop5;
                                 },continue loop0)
                                 {
                                    §§push(§§newactivation());
                                    while(true)
                                    {
                                       §§pop().§§slot[2] = new Timer(this.§&!z§,1);
                                       continue loop5;
                                    }
                                 }
                                 continue loop2;
                                 addr84:
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc4_)
                                       {
                                          §§pop().§§slot[2].start();
                                          while(true)
                                          {
                                             §0W§.§#W§(§0W§.§;K§);
                                             if(!(_loc4_ || this))
                                             {
                                                break;
                                             }
                                             if(_loc4_)
                                             {
                                                if(true)
                                                {
                                                   this.§=D§();
                                                }
                                                else
                                                {
                                                   addr210:
                                                }
                                                continue loop9;
                                                break;
                                             }
                                          }
                                          §§goto(addr212);
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          §§pop().§§slot[2].addEventListener(TimerEvent.TIMER_COMPLETE,this.§["=§);
                                          if(!(_loc5_ && this))
                                          {
                                             if(_loc4_)
                                             {
                                                §§goto(addr84);
                                             }
                                             else
                                             {
                                                §§goto(addr111);
                                             }
                                          }
                                          §§goto(addr212);
                                       }
                                       §§goto(addr94);
                                    }
                                    addr67:
                                 }
                              }
                              if(_loc5_ && _loc2_)
                              {
                                 continue;
                              }
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr67);
                              §§push(§§newactivation());
                           }
                        }
                     }
                  }
               }
            }
            catch(e:Error)
            {
               if(!_loc5_)
               {
                  §,"0§.log("Error parsing response");
               }
               §§goto(addr210);
            }
            addr212:
            return;
         }
         §§goto(addr34);
      }
      
      protected function §["=§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§%">§);
            if(_loc3_ || param1)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§%">§);
                     addr146:
                     while(true)
                     {
                        §§pop().close();
                        addr147:
                        while(true)
                        {
                           this.§%">§ = null;
                           addr123:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr144:
               }
               loop1:
               while(true)
               {
                  if(!(AngryBirdsFP11.§>!7§ as §+`§).§&3§)
                  {
                     this.§5a§(null);
                     if(_loc3_ || _loc2_)
                     {
                        if(!(_loc2_ && this))
                        {
                           if(_loc3_)
                           {
                              if(_loc2_)
                              {
                                 continue;
                              }
                              if(_loc3_)
                              {
                                 §§goto(addr25);
                              }
                              §§goto(addr144);
                           }
                           else
                           {
                              addr104:
                              this.§!![§ = new §<`§(§]!M§.§"!V§.Views.PopupView_LevelUp[0],this.§9J§.§<!_§.§"p§());
                              loop6:
                              while(true)
                              {
                                 §§push(this.§!![§);
                                 loop7:
                                 while(true)
                                 {
                                    §§pop().open();
                                    addr87:
                                    while(true)
                                    {
                                       if(_loc3_ || param1)
                                       {
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          §§push(this.§!![§);
                                          if(_loc3_ || param1)
                                          {
                                             §§pop().mClip.addEventListener(§`![§.§;!U§,this.§5a§);
                                             break loop1;
                                          }
                                          continue loop7;
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                              addr118:
                           }
                           §§goto(addr147);
                        }
                        §§goto(addr87);
                     }
                     break;
                  }
                  §§goto(addr104);
               }
               addr25:
               return;
            }
            §§goto(addr146);
         }
         §§goto(addr118);
      }
      
      protected function §5a§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§0!&§ = new §<q§(§]!M§.§"!V§.Views.PopupView_FinishLevel[0],this.§9J§.§<!_§.§"p§());
            do
            {
               this.§0!&§.open();
            }
            while(_loc2_);
            
         }
      }
      
      private function §?!&§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§[o§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr53:
                     this.§[o§.refresh(this.§9J§.§0"!§.§0z§);
                  }
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      private function §4! §(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§[o§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§,"#§);
                  loop1:
                  while(true)
                  {
                     §§push(Quest.§[R§);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop() == §§pop());
                        loop3:
                        while(true)
                        {
                           §§push(!§§pop());
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       §§push(this.§,"#§);
                                       if(!(_loc3_ && this))
                                       {
                                          §§push(Quest.§0"?§);
                                          if(_loc2_)
                                          {
                                             if(!(_loc2_ || param1))
                                             {
                                                break;
                                             }
                                             §§push(§§pop() == §§pop());
                                             if(_loc2_ || _loc3_)
                                             {
                                                §§push(!§§pop());
                                                if(!(_loc3_ && param1))
                                                {
                                                   if(!(_loc2_ || this))
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(!(_loc2_ || _loc3_))
                                                   {
                                                      continue loop4;
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            §§push(this.§,"#§);
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(Quest.§;!b§);
                                                               addr188:
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  if(§§pop() != §§pop())
                                                                  {
                                                                     if(_loc2_ || param1)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§9J§);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(§§pop().§%8§);
                                                                              if(_loc2_)
                                                                              {
                                                                                 §§push(§§pop().§'[§());
                                                                                 loop7:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr205:
                                                                                       while(_loc2_)
                                                                                       {
                                                                                          §§push(this.§9J§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().§%8§);
                                                                                             addr210:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().§9!G§(false);
                                                                                                addr212:
                                                                                                while(_loc2_)
                                                                                                {
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop6;
                                                                                       addr205:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       this.§#N§();
                                                                                       loop13:
                                                                                       while(true)
                                                                                       {
                                                                                          addr48:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§,"#§);
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                if(!(_loc3_ && _loc2_))
                                                                                                {
                                                                                                   §§push(Quest.§0"?§);
                                                                                                   if(_loc2_ || _loc3_)
                                                                                                   {
                                                                                                      if(§§pop() == §§pop())
                                                                                                      {
                                                                                                         if(_loc3_ && _loc2_)
                                                                                                         {
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            §§goto(addr239);
                                                                                                         }
                                                                                                         §§push(this.§`c§());
                                                                                                         if(_loc3_ && _loc2_)
                                                                                                         {
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            if(_loc2_ || _loc2_)
                                                                                                            {
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            this.play();
                                                                                                            if(_loc2_ || _loc3_)
                                                                                                            {
                                                                                                               if(_loc2_ || _loc3_)
                                                                                                               {
                                                                                                                  addr47:
                                                                                                                  break loop13;
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                         }
                                                                                                         if(!(_loc3_ && param1))
                                                                                                         {
                                                                                                            break loop13;
                                                                                                         }
                                                                                                         §§goto(addr212);
                                                                                                      }
                                                                                                      break loop13;
                                                                                                   }
                                                                                                   continue loop15;
                                                                                                }
                                                                                                continue loop1;
                                                                                             }
                                                                                             continue loop16;
                                                                                          }
                                                                                          §§goto(addr205);
                                                                                       }
                                                                                       return;
                                                                                    }
                                                                                 }
                                                                                 addr204:
                                                                              }
                                                                              §§goto(addr210);
                                                                           }
                                                                           §§goto(addr209);
                                                                        }
                                                                        addr196:
                                                                     }
                                                                     §§goto(addr205);
                                                                  }
                                                                  §§goto(addr48);
                                                               }
                                                            }
                                                            addr186:
                                                         }
                                                         §§goto(addr196);
                                                      }
                                                      §§goto(addr48);
                                                   }
                                                }
                                             }
                                             §§goto(addr204);
                                          }
                                          §§goto(addr188);
                                       }
                                       §§goto(addr186);
                                    }
                                    continue loop2;
                                 }
                              }
                              §§goto(addr180);
                           }
                        }
                     }
                  }
               }
            }
            addr239:
            return;
         }
         §§goto(addr47);
      }
      
      private function play() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§9J§.§<!_§.§#!t§();
         }
      }
      
      private function onPlay(param1:§!"8§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§[o§.onPhysicsEnabled();
         }
      }
      
      private function §]!$§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§[o§);
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
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.§[o§);
                              if(_loc2_ || this)
                              {
                                 §§push(§§pop().§;!1§);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(Quest.§;!b§);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       addr259:
                                       while(true)
                                       {
                                          loop8:
                                          while(!§§pop())
                                          {
                                             §§push(this.§,"&§);
                                             if(!_loc3_)
                                             {
                                                if(§§pop() == null)
                                                {
                                                   §§push(this.§0!&§);
                                                   if(_loc2_)
                                                   {
                                                      if(§§pop() == null)
                                                      {
                                                         §§push(this.§[o§);
                                                         loop9:
                                                         for(; _loc2_ || this; §§push(this.§[o§),if(!_loc2_)
                                                         {
                                                            continue;
                                                         },§§push(§§pop().§;!1§),if(_loc3_)
                                                         {
                                                            continue loop5;
                                                         },§§push(Quest.§0"?§),if(!_loc2_)
                                                         {
                                                            continue loop6;
                                                         },§§push(§§pop() == §§pop()),if(!_loc3_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            §§goto(addr40);
                                                         },§§goto(addr104))
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               if(_loc3_ && this)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§push(§§pop());
                                                               if(_loc3_ && _loc3_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  loop10:
                                                                  while(§§pop())
                                                                  {
                                                                     if(!(_loc3_ && this))
                                                                     {
                                                                        if(_loc2_ || _loc3_)
                                                                        {
                                                                           this.§6t§();
                                                                           addr58:
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr274:
                                                                           addr112:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    if(!(_loc3_ && this))
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    addr227:
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          this.§,"&§ = null;
                                                                                          §§goto(addr227);
                                                                                       }
                                                                                       addr242:
                                                                                    }
                                                                                    addr213:
                                                                                    this.§9J§.§<!_§.§"p§().§<!k§();
                                                                                    addr212:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr177:
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(!(_loc2_ || _loc2_))
                                                                                       {
                                                                                          addr198:
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             addr207:
                                                                                             this.§0!&§.close();
                                                                                             this.§0!&§ = null;
                                                                                             §§goto(addr177);
                                                                                             addr208:
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§push(this.§9J§);
                                                                                          if(!(_loc3_ && this))
                                                                                          {
                                                                                             §§push(§§pop().§<!_§);
                                                                                             if(_loc2_ || this)
                                                                                             {
                                                                                                §§pop().mNextState = StateMap.§%!Q§;
                                                                                                §&y§.§0>§ = true;
                                                                                                addr172:
                                                                                                if(_loc3_ && _loc2_)
                                                                                                {
                                                                                                   §§goto(addr172);
                                                                                                }
                                                                                                break loop10;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr212);
                                                                                          }
                                                                                          §§goto(addr213);
                                                                                       }
                                                                                       addr215:
                                                                                       if(!(_loc3_ && param1))
                                                                                       {
                                                                                          break loop10;
                                                                                       }
                                                                                       break loop8;
                                                                                    }
                                                                                    §§goto(addr208);
                                                                                 }
                                                                                 §§goto(addr215);
                                                                              }
                                                                              §§goto(addr172);
                                                                              §§goto(addr111);
                                                                           }
                                                                           break;
                                                                        }
                                                                        addr239:
                                                                        addr239:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§,"&§);
                                                                           addr241:
                                                                           while(true)
                                                                           {
                                                                              §§pop().close();
                                                                           }
                                                                        }
                                                                        §§goto(addr242);
                                                                     }
                                                                     §§goto(addr58);
                                                                  }
                                                                  return;
                                                                  addr40:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc3_ && _loc2_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  §§pop();
                                                               }
                                                               addr104:
                                                               §§goto(addr112);
                                                            }
                                                            §§goto(addr104);
                                                         }
                                                         break loop4;
                                                         continue loop0;
                                                      }
                                                      §§goto(addr198);
                                                   }
                                                   §§goto(addr207);
                                                }
                                                §§goto(addr239);
                                             }
                                             §§goto(addr241);
                                          }
                                          break loop4;
                                       }
                                    }
                                 }
                              }
                              break;
                           }
                           §§pop().§ !R§();
                           §§goto(addr274);
                        }
                     }
                     §§goto(addr259);
                  }
               }
            }
         }
         §§goto(addr239);
      }
      
      private function §'"§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:XML = §-"#§.§0o§;
         if(_loc2_ || this)
         {
            §4!1§.§[E§.§^?§();
            loop0:
            while(true)
            {
               if(_loc1_)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     this.§3!W§ = false;
                  }
                  loop1:
                  while(true)
                  {
                     this.§[o§ = new Quest(this.§9J§.§0"!§.§0z§);
                     loop2:
                     while(true)
                     {
                        this.§3!V§ = new §-!g§(this.§[o§);
                        addr215:
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(this.§[o§);
                              while(true)
                              {
                                 §§push(§[!&§.§-@§);
                                 loop6:
                                 while(true)
                                 {
                                    §§pop().addEventListener(§§pop(),this.§=!+§);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§[o§);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§[!&§.§^[§);
                                          loop9:
                                          while(!_loc3_)
                                          {
                                             §§pop().addEventListener(§§pop(),this.§@!n§);
                                             loop10:
                                             while(_loc2_)
                                             {
                                                §§push(this.§[o§);
                                                loop11:
                                                while(!_loc3_)
                                                {
                                                   §§push(§[!&§.§#+§);
                                                   loop12:
                                                   while(!(_loc3_ && _loc3_))
                                                   {
                                                      §§pop().addEventListener(§§pop(),this.§[!t§);
                                                      loop13:
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               break;
                                                               addr101:
                                                            }
                                                            §§push(this.§[o§);
                                                            while(_loc2_)
                                                            {
                                                               §§push(§[!&§.§6B§);
                                                               if(_loc2_)
                                                               {
                                                                  §§pop().addEventListener(§§pop(),this.§=!+§);
                                                                  loop15:
                                                                  for(; _loc2_; if(_loc2_ || _loc1_)
                                                                  {
                                                                     continue loop10;
                                                                  })
                                                                  {
                                                                     if(_loc1_)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     addr52:
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        this.§[!t§();
                                                                        while(_loc2_)
                                                                        {
                                                                           if(_loc2_ || _loc3_)
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           continue loop13;
                                                                           §0W§.§#W§(§0W§.§,!G§);
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                        }
                                                                        addr97:
                                                                        while(true)
                                                                        {
                                                                           continue loop18;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               continue loop12;
                                                            }
                                                            continue loop11;
                                                         }
                                                         loop22:
                                                         while(true)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop4;
                                                            }
                                                            addr193:
                                                            while(true)
                                                            {
                                                               this.§3!V§ = new §-!g§(this.§[o§);
                                                               continue loop22;
                                                            }
                                                         }
                                                         continue loop3;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop9;
                                                }
                                                continue loop8;
                                                if(_loc3_ && _loc2_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr78);
                                             }
                                             continue loop7;
                                          }
                                          continue loop6;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               else
               {
                  this.§3!W§ = true;
               }
               while(true)
               {
                  if(!(_loc3_ && this))
                  {
                     this.§[o§ = Quest.§8"2§(this.§9J§.§0"!§.§0z§);
                     §§goto(addr193);
                  }
                  §§goto(addr215);
               }
            }
         }
         §§goto(addr51);
      }
      
      private function onPhysicsEnabled(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§[o§.onPhysicsEnabled();
            do
            {
               this.§9J§.§^!b§.goToCastleView();
            }
            while(_loc2_ && param1);
            
         }
      }
      
      private function §@<§(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§9J§.§^!b§.§?!<§(this.§[o§.§%!f§());
         }
      }
      
      public function §-"6§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§,"#§ == Quest.§'!X§);
         if(_loc2_ || this)
         {
            return !§§pop();
         }
      }
      
      public function §?!p§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§[o§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     addr45:
                     §§push(false);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr49:
                     return this.§[o§.§6!p§;
                  }
                  return §§pop();
               }
            }
            §§goto(addr49);
         }
         §§goto(addr45);
      }
      
      public function §["&§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§[o§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     addr40:
                     §§push(true);
                     if(!(_loc2_ && this))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr59:
                     return this.§[o§.§6!p§;
                  }
                  return §§pop();
               }
            }
            §§goto(addr59);
         }
         §§goto(addr40);
      }
      
      public function §5"0§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§[o§ == null);
         if(_loc2_ || this)
         {
            return !§§pop();
         }
      }
   }
}
