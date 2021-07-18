package §'i§
{
   import § "@§.StateLevelEditorTestPlay;
   import §#R§.§4!+§;
   import §&"'§.§3^§;
   import §'@§.§4&§;
   import §+h§.§+1§;
   import §+h§.§^!]§;
   import §,B§.StateMap;
   import §0![§.§^! §;
   import §1"2§.§`7§;
   import §2H§.§,5§;
   import §2H§.§0Q§;
   import §2H§.§7q§;
   import §2H§.§<j§;
   import §2H§.§]>§;
   import §3!t§.include;
   import §6" §.§2y§;
   import §62§.§0!t§;
   import §7r§.§=q§;
   import §8" §.§,!q§;
   import §8" §.§2J§;
   import §8" §.Quest;
   import §=!M§.§9!P§;
   import §=!M§.Base64;
   import §="6§.§^"8§;
   import §@"5§.§1k§;
   import §]!+§.§ 1§;
   import §^!y§.§'"#§;
   import §^[§.§'!K§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   
   public class §6y§ implements §8p§
   {
       
      
      private var §'r§:Quest;
      
      private var §<"9§:§ 1§;
      
      private var §6!^§:§'!;§;
      
      private var §8!C§:Vector.<DisplayObject>;
      
      private var §=j§:Boolean = false;
      
      private var §&!P§:§0Q§;
      
      private var §;C§:§]>§;
      
      private var §,!@§:§7q§;
      
      private var §7-§:§,5§;
      
      private var §9!u§:String;
      
      private var §"m§:String;
      
      private var §'1§:DisplayObject;
      
      private var §8!g§:§3^§;
      
      private var §="$§:Boolean = false;
      
      private var §^q§:§4!+§;
      
      private var §7Q§:Boolean = false;
      
      private const §8"3§:int = 4000;
      
      public function §6y§(param1:§'!;§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§8!C§ = new Vector.<DisplayObject>();
            while(true)
            {
               super();
               loop1:
               for(; !(_loc3_ && _loc2_); loop3:
               for(; !(_loc3_ && this); if(!(_loc3_ && _loc2_))
               {
                  return;
               })
               {
                  this.§<"9§ = new § 1§(this.§6!^§.§+"2§.§?E§ as §'!K§,§`7§.§>"?§.Views.View_QuestMenu[0],this.§6!^§.§+"2§.§?E§.container);
                  while(true)
                  {
                     this.§<"9§.addEventListener(Event.SELECT,this.§+<§);
                     while(_loc2_)
                     {
                        §,!q§.§2=§.addEventListener(§1k§.§-V§,this.onQuestCompleted);
                        if(!_loc3_)
                        {
                           continue loop3;
                        }
                     }
                  }
               })
               {
                  while(true)
                  {
                     this.§6!^§ = param1;
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr117);
      }
      
      public function initialize() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§6!^§);
            loop0:
            while(true)
            {
               §§push(§§pop().§+"2§);
               loop1:
               while(true)
               {
                  §§push(§0!t§.CONTINUE);
                  loop2:
                  while(true)
                  {
                     §§pop().addEventListener(§§pop(),this.§=!w§,false,1);
                     loop3:
                     while(true)
                     {
                        §§push(this.§6!^§);
                        loop4:
                        while(true)
                        {
                           §§push(§§pop().§+"2§);
                           loop5:
                           while(true)
                           {
                              §§push(§0!t§.CANCEL);
                              loop6:
                              while(true)
                              {
                                 §§pop().addEventListener(§§pop(),this.§&<§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(this.§6!^§);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§§pop().§+"2§);
                                       loop9:
                                       while(_loc1_)
                                       {
                                          §§push(§0!t§.PUBLISH);
                                          loop10:
                                          for(; _loc1_ || _loc1_; §§push(§0!t§.PLAY),if(_loc2_ && _loc1_)
                                          {
                                             continue;
                                          },if(!_loc1_)
                                          {
                                             continue loop6;
                                          },§§pop().addEventListener(§§pop(),this.onPlay),§§goto(addr115))
                                          {
                                             §§pop().addEventListener(§§pop(),this.§'6§);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(this.§6!^§);
                                                while(!_loc2_)
                                                {
                                                   continue loop0;
                                                   addr47:
                                                   if(_loc2_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   addr54:
                                                   §§push(§§pop().§+"2§);
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      addr64:
                                                      §§pop().addEventListener(KeyboardEvent.KEY_DOWN,this.§8!l§);
                                                      if(_loc2_ && this)
                                                      {
                                                         addr115:
                                                         loop28:
                                                         while(true)
                                                         {
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§6!^§);
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           addr33:
                                                                           if(_loc1_ || _loc2_)
                                                                           {
                                                                              addr40:
                                                                              if(_loc1_ || _loc1_)
                                                                              {
                                                                                 §§goto(addr47);
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop16:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().§8#§);
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(§0!t§.CHANGE);
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       §§pop().addEventListener(§§pop(),this.§#<§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§6!^§);
                                                                                          addr162:
                                                                                          if(_loc2_ && _loc1_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(this.§6!^§);
                                                                                          while(!(_loc2_ && this))
                                                                                          {
                                                                                             if(!(_loc2_ && _loc2_))
                                                                                             {
                                                                                                addr99:
                                                                                                §§push(§§pop().§+"2§);
                                                                                                while(!_loc2_)
                                                                                                {
                                                                                                   continue loop10;
                                                                                                   §§goto(addr54);
                                                                                                }
                                                                                                continue loop5;
                                                                                                addr99:
                                                                                             }
                                                                                             continue loop8;
                                                                                          }
                                                                                          loop24:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().§1?§);
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(§0!t§.§0!_§);
                                                                                             if(!(_loc2_ && _loc2_))
                                                                                             {
                                                                                                §§pop().addEventListener(§§pop(),this.§0!h§);
                                                                                                break loop28;
                                                                                             }
                                                                                             addr183:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().addEventListener(§§pop(),this.onPhysicsEnabled);
                                                                                                addr186:
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop24;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr84:
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr183);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().addEventListener(§§pop(),this.§]d§);
                                                                                          addr231:
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop16;
                                                                                          }
                                                                                       }
                                                                                       addr228:
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr228);
                                                                                 }
                                                                                 addr226:
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop().§4p§.addEventListener(§0!t§.§6!D§,this.§#<§);
                                                                              addr196:
                                                                              while(_loc1_)
                                                                              {
                                                                                 §§push(this.§6!^§);
                                                                                 continue loop8;
                                                                              }
                                                                              continue loop7;
                                                                              §§goto(addr33);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr84);
                                                                        }
                                                                        §§goto(addr99);
                                                                     }
                                                                     return;
                                                                     addr80:
                                                                     addr126:
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               §§goto(addr231);
                                                            }
                                                            break;
                                                            §§goto(addr64);
                                                         }
                                                         while(true)
                                                         {
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               §§goto(addr162);
                                                            }
                                                            break;
                                                            §§goto(addr115);
                                                         }
                                                         addr115:
                                                         §§goto(addr186);
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§goto(addr80);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr196);
                                                      }
                                                   }
                                                   §§goto(addr99);
                                                }
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
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr126);
      }
      
      public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§,!1§.§2=§);
            loop0:
            while(true)
            {
               §§push(this.§-!Q§);
               loop1:
               while(true)
               {
                  §§push(§,!1§.SAVE);
                  loop2:
                  while(true)
                  {
                     §§pop().§8!5§(§§pop(),§§pop());
                     loop3:
                     while(true)
                     {
                        §§push(§,!1§.§2=§);
                        loop4:
                        while(true)
                        {
                           §§push(this.§ b§);
                           loop5:
                           while(true)
                           {
                              §§push(§,!1§.CONTINUE);
                              loop6:
                              while(true)
                              {
                                 §§pop().§8!5§(§§pop(),§§pop());
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§,!1§.§2=§);
                                    while(true)
                                    {
                                       §§push(this.§?K§);
                                       loop9:
                                       while(_loc1_)
                                       {
                                          §§push(§,!1§.MODIFY);
                                          loop10:
                                          while(true)
                                          {
                                             §§pop().§8!5§(§§pop(),§§pop());
                                             loop11:
                                             while(!(_loc2_ && this))
                                             {
                                                §§push(§,!1§.§2=§);
                                                while(!_loc2_)
                                                {
                                                   §§push(this.§^U§);
                                                   loop13:
                                                   for(; _loc1_ || _loc2_; loop17:
                                                   while(true)
                                                   {
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         if(_loc2_ && _loc1_)
                                                         {
                                                            break;
                                                            addr356:
                                                         }
                                                         §§push(§,!1§.DELETE);
                                                         while(true)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               if(!_loc1_)
                                                               {
                                                                  break;
                                                               }
                                                               §§pop().§8!5§(§§pop(),§§pop());
                                                               while(!(_loc2_ && this))
                                                               {
                                                                  §§push(§,!1§.§2=§);
                                                                  loop20:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§"H§);
                                                                     addr317:
                                                                     while(true)
                                                                     {
                                                                        §§push(§,!1§.CATEGORY);
                                                                        continue loop10;
                                                                     }
                                                                     addr290:
                                                                     loop24:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           if(!_loc1_)
                                                                           {
                                                                              break;
                                                                              addr301:
                                                                           }
                                                                           §§push(this.§"";§);
                                                                           while(_loc1_ || _loc2_)
                                                                           {
                                                                              §§push(§,!1§.GRAVITY);
                                                                              while(true)
                                                                              {
                                                                                 §§pop().§8!5§(§§pop(),§§pop());
                                                                                 continue loop24;
                                                                              }
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                        continue loop20;
                                                                     }
                                                                     §§goto(addr338);
                                                                  }
                                                                  addr119:
                                                                  if(_loc2_ && _loc2_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr126:
                                                                  §§push(this.§6!^§);
                                                                  if(_loc1_)
                                                                  {
                                                                     addr39:
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        addr46:
                                                                        §§push(§§pop().§+"2§);
                                                                        if(!(_loc2_ && _loc1_))
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              if(!(_loc2_ && _loc1_))
                                                                              {
                                                                                 §§push(§§pop().§9B§());
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    if(!(_loc2_ && _loc1_))
                                                                                    {
                                                                                       §§pop().§%w§("Birds");
                                                                                       loop48:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc1_ || _loc2_)
                                                                                          {
                                                                                             addr82:
                                                                                             if(!(_loc2_ && _loc2_))
                                                                                             {
                                                                                                addr89:
                                                                                                if(_loc1_ || _loc1_)
                                                                                                {
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      if(_loc1_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§goto(addr311);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr195:
                                                                                                      if(_loc2_ && _loc2_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            loop31:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§<"9§.init(this.§'r§);
                                                                                                               loop32:
                                                                                                               while(_loc1_)
                                                                                                               {
                                                                                                                  §§push(this.§8!-§ == Quest.§9!h§);
                                                                                                                  if(_loc1_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        loop50:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           loop51:
                                                                                                                           while(_loc1_)
                                                                                                                           {
                                                                                                                              §§push(StateLevelEditorTestPlay.§^!M§);
                                                                                                                              if(!(_loc2_ && this))
                                                                                                                              {
                                                                                                                                 addr192:
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr192);
                                                                                                                                 }
                                                                                                                                 addr193:
                                                                                                                              }
                                                                                                                              loop34:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    §§goto(addr195);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(this.§6!^§);
                                                                                                                                    loop35:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().§+"2§);
                                                                                                                                       addr168:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().§9B§());
                                                                                                                                          loop37:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop().§"!U§();
                                                                                                                                             loop38:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc2_ && _loc1_)
                                                                                                                                                {
                                                                                                                                                   continue loop51;
                                                                                                                                                }
                                                                                                                                                if(_loc1_)
                                                                                                                                                {
                                                                                                                                                   if(_loc1_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§6!9§());
                                                                                                                                                      if(!_loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc2_ && _loc1_))
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc1_ || this))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop38;
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop32;
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(this.§6!^§);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().§+"2§);
                                                                                                                                                                     addr154:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().§9B§());
                                                                                                                                                                        addr155:
                                                                                                                                                                        while(_loc1_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().getItemByName("Categories").setVisibility(false);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§6!^§);
                                                                                                                                                                              addr104:
                                                                                                                                                                              while(!_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().§+"2§);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().§9B§());
                                                                                                                                                                                    addr108:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().getItemByName("Categories2").setVisibility(true);
                                                                                                                                                                                       addr112:
                                                                                                                                                                                       while(_loc1_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr119);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr204:
                                                                                                                                                                                       break loop48;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr46);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr126);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop35;
                                                                                                                                                                              §§goto(addr82);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop37;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr39);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr89);
                                                                                                                                                               }
                                                                                                                                                               continue loop3;
                                                                                                                                                               addr140:
                                                                                                                                                            }
                                                                                                                                                            continue loop48;
                                                                                                                                                         }
                                                                                                                                                         continue loop50;
                                                                                                                                                      }
                                                                                                                                                      continue loop34;
                                                                                                                                                   }
                                                                                                                                                   addr286:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(this.§'r§)
                                                                                                                                                      {
                                                                                                                                                         continue loop31;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   this.§%$§();
                                                                                                                                                   continue loop31;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop51;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr204);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop11;
                                                                                                                        }
                                                                                                                        addr230:
                                                                                                                     }
                                                                                                                     §§goto(addr193);
                                                                                                                  }
                                                                                                                  §§goto(addr230);
                                                                                                               }
                                                                                                               addr334:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr290);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr202:
                                                                                                      this.§6%§();
                                                                                                      §§goto(addr204);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr140);
                                                                                             }
                                                                                             §§goto(addr161);
                                                                                          }
                                                                                          §§goto(addr112);
                                                                                       }
                                                                                       return;
                                                                                    }
                                                                                    §§goto(addr155);
                                                                                 }
                                                                                 §§goto(addr108);
                                                                              }
                                                                              §§goto(addr168);
                                                                           }
                                                                           §§goto(addr154);
                                                                        }
                                                                        §§goto(addr107);
                                                                     }
                                                                     §§goto(addr153);
                                                                  }
                                                                  §§goto(addr104);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr385);
                                                            }
                                                            §§goto(addr386);
                                                         }
                                                         continue loop6;
                                                      }
                                                      continue loop13;
                                                   },continue loop9)
                                                   {
                                                      §§push(§,!1§.ADD);
                                                      while(true)
                                                      {
                                                         §§pop().§8!5§(§§pop(),§§pop());
                                                         addr386:
                                                         while(true)
                                                         {
                                                            §§push(§,!1§.§2=§);
                                                            addr338:
                                                            while(true)
                                                            {
                                                               §§push(this.§5;§);
                                                               continue loop13;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop0;
                                             }
                                             continue loop7;
                                             addr319:
                                             while(true)
                                             {
                                                if(!(_loc1_ || this))
                                                {
                                                   continue loop10;
                                                }
                                                if(!(_loc1_ || _loc1_))
                                                {
                                                   break;
                                                }
                                                §§pop().§8!5§(§§pop(),§§pop());
                                                §§goto(addr334);
                                             }
                                             continue loop2;
                                          }
                                       }
                                       continue loop1;
                                       if(!(_loc1_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       if(_loc2_)
                                       {
                                          continue loop4;
                                       }
                                       §§push(this.§8§);
                                       if(!_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             §§push(§,!1§.CREATE_UNDO);
                                             if(!_loc2_)
                                             {
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      §§pop().§8!5§(§§pop(),§§pop());
                                                      §§goto(addr286);
                                                   }
                                                   §§goto(addr356);
                                                }
                                                §§goto(addr319);
                                             }
                                             §§goto(addr310);
                                          }
                                          §§goto(addr317);
                                       }
                                       §§goto(addr301);
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
         §§goto(addr202);
      }
      
      private function §8!l§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(param1.charCode == "f".charCodeAt())
            {
               loop0:
               while(true)
               {
                  StateLevelEditorTestPlay.§^!M§ = true;
                  addr151:
                  addr112:
                  while(true)
                  {
                     this.§6%§();
                     loop2:
                     while(true)
                     {
                        §§push(this.§6!^§);
                        addr123:
                        while(true)
                        {
                           §§push(§§pop().§+"2§);
                           addr124:
                           while(true)
                           {
                              §§push(§§pop().§9B§());
                              addr125:
                              while(true)
                              {
                                 §§pop().§=!^§();
                                 addr126:
                                 while(!_loc2_)
                                 {
                                    while(true)
                                    {
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  loop8:
                  while(true)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        loop9:
                        while(param1.charCode == "w".charCodeAt())
                        {
                           if(!_loc2_)
                           {
                              if(!(_loc3_ || this))
                              {
                                 break loop8;
                              }
                              this.§'r§.§8D§();
                           }
                           loop10:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue loop8;
                              }
                              §§push(this.§6!^§);
                              while(_loc3_)
                              {
                                 §§pop().§8#§.§ f§();
                                 §§push(this.§6!^§);
                                 continue loop10;
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 §§push(§§pop().§+"2§);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop().§9B§());
                                    if(_loc3_)
                                    {
                                       addr40:
                                       §§pop().§%w§("Blocks");
                                       if(_loc3_ || _loc2_)
                                       {
                                          break loop9;
                                       }
                                       continue loop10;
                                    }
                                    §§goto(addr125);
                                 }
                                 §§goto(addr124);
                              }
                              §§goto(addr123);
                           }
                        }
                        return;
                        addr77:
                     }
                     continue loop0;
                  }
                  §§goto(addr151);
               }
            }
            while(true)
            {
               if(this.§8!-§ != Quest.§1! §)
               {
                  if(_loc3_ || _loc3_)
                  {
                     break;
                  }
                  §§goto(addr112);
               }
               §§goto(addr77);
            }
            return;
         }
         §§goto(addr128);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§7Q§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§push(this.§="$§);
                     loop1:
                     while(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              this.§<"9§.update(param1);
                              if(_loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc2_ || this)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          if(!_loc3_)
                                          {
                                             return;
                                          }
                                          break loop1;
                                       }
                                       loop4:
                                       while(true)
                                       {
                                          §§push(this.§6!^§.§1?§.§7"4§());
                                          loop5:
                                          while(_loc2_)
                                          {
                                             §§push(!§§pop());
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop());
                                                loop6:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr175:
                                                         while(true)
                                                         {
                                                            §§push(this.§8!-§);
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§push(Quest.§&P§);
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc2_ || this)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc2_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           break loop10;
                                                                        }
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc2_ || this)
                                                                                 {
                                                                                    §§push(this.§'r§);
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§pop().update(param1);
                                                                                    addr154:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§push(this.§8!-§);
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§push(Quest.§;!y§);
                                                                                          if(_loc2_ || _loc3_)
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                             if(_loc3_ && this)
                                                                                             {
                                                                                                break loop10;
                                                                                             }
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                continue loop12;
                                                                                             }
                                                                                             continue loop5;
                                                                                          }
                                                                                          continue loop10;
                                                                                       }
                                                                                       continue loop11;
                                                                                    }
                                                                                    if(_loc2_ || param1)
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    continue loop13;
                                                                                 }
                                                                                 continue loop11;
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc2_ || this)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          this.§7!F§(this.§'r§.getHUDs());
                                                                                          loop15:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§;!m§();
                                                                                             addr52:
                                                                                             addr66:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc2_ || this)
                                                                                                {
                                                                                                   continue loop13;
                                                                                                }
                                                                                                continue loop15;
                                                                                             }
                                                                                             addr66:
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop3;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr67:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       this.play();
                                                                                       addr211:
                                                                                    }
                                                                                 }
                                                                                 return;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              addr162:
                                                                           }
                                                                           §§goto(addr67);
                                                                        }
                                                                     }
                                                                     continue loop6;
                                                                     addr146:
                                                                  }
                                                                  continue loop16;
                                                               }
                                                               while(_loc2_)
                                                               {
                                                                  §§pop();
                                                                  §§goto(addr154);
                                                               }
                                                               continue loop1;
                                                            }
                                                         }
                                                      }
                                                      addr174:
                                                   }
                                                   §§goto(addr146);
                                                }
                                             }
                                             §§goto(addr174);
                                          }
                                          continue loop0;
                                       }
                                    }
                                    §§goto(addr175);
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr52);
                           }
                        }
                     }
                     this.§7Q§ = false;
                  }
                  §§goto(addr211);
               }
               else
               {
                  §§push(this.§'r§);
               }
               §§goto(addr162);
            }
         }
         §§goto(addr66);
      }
      
      private function §7!F§(param1:Vector.<DisplayObject>) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:DisplayObject = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§8!C§;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc4_,_loc3_));
            if(_loc6_ || _loc3_)
            {
               if(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc3_,_loc4_);
                  if(_loc6_)
                  {
                     if(param1.indexOf(_loc2_) == -1)
                     {
                        if(_loc6_)
                        {
                           this.§6!^§.§+"2§.§?E§.movieClip.removeChild(_loc2_);
                        }
                     }
                  }
                  continue;
               }
               if(_loc6_ || this)
               {
                  if(_loc6_ || param1)
                  {
                     if(_loc6_ || param1)
                     {
                        this.§8!C§ = param1;
                        if(_loc6_)
                        {
                           _loc3_ = 0;
                           if(!_loc5_)
                           {
                              _loc4_ = this.§8!C§;
                              while(true)
                              {
                                 §§push(§§hasnext(_loc4_,_loc3_));
                                 break loop0;
                              }
                              addr149:
                              addr148:
                              addr146:
                           }
                           §§goto(addr149);
                        }
                     }
                     return;
                  }
                  §§goto(addr149);
               }
               §§goto(addr148);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc2_ = §§nextvalue(_loc3_,_loc4_);
               if(!(_loc5_ && this))
               {
                  if(_loc2_.parent != this.§6!^§.§+"2§.§?E§.movieClip)
                  {
                     if(_loc6_)
                     {
                        this.§6!^§.§+"2§.§?E§.movieClip.addChildAt(_loc2_,0);
                     }
                  }
               }
               continue;
            }
            §§goto(addr149);
         }
      }
      
      public function §;!m§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:DisplayObject = this.§'r§.getNextInstruction();
         if(!(_loc3_ && _loc2_))
         {
            §§push(Boolean(this.§'1§));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        while(true)
                        {
                           §§push(this.§'1§ == _loc1_);
                           if(!_loc3_)
                           {
                              §§push(!§§pop());
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr235:
                                 while(true)
                                 {
                                 }
                              }
                              addr233:
                           }
                           loop5:
                           while(true)
                           {
                              §§push(§§pop());
                              loop6:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(!(_loc3_ && this))
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       §§pop();
                                       while(true)
                                       {
                                          §§push(Boolean(this.§'1§.parent));
                                       }
                                    }
                                    continue loop2;
                                    addr238:
                                 }
                                 while(true)
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             this.§'1§.parent.removeChild(this.§'1§);
                                             addr224:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr218:
                                       }
                                       while(true)
                                       {
                                          this.§'1§ = _loc1_;
                                          loop13:
                                          while(true)
                                          {
                                             if(!this.§'1§)
                                             {
                                                while(true)
                                                {
                                                   §§push(!this.§^q§.parent);
                                                   loop23:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc2_ || _loc2_))
                                                      {
                                                         break;
                                                      }
                                                      if(_loc2_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop26:
                                                            while(§§pop())
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  addr62:
                                                                  if(_loc2_ || _loc3_)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           §§push(this.§6!^§);
                                                                           if(_loc2_)
                                                                           {
                                                                              §§push(§§pop().§+"2§);
                                                                              if(!(_loc3_ && _loc1_))
                                                                              {
                                                                                 §§pop().§?E§.movieClip.addChild(this.§^q§);
                                                                                 addr90:
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc3_ && _loc1_))
                                                                                    {
                                                                                       continue loop13;
                                                                                    }
                                                                                    addr186:
                                                                                    while(_loc2_)
                                                                                    {
                                                                                       this.§'1§.visible = this.§'1§.visible && !this.§="$§;
                                                                                       continue loop21;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!this.§'1§.parent)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§6!^§);
                                                                                             addr192:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().§+"2§);
                                                                                                addr193:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().§?E§.movieClip.addChild(this.§'1§);
                                                                                                   addr198:
                                                                                                   while(!(_loc3_ && _loc3_))
                                                                                                   {
                                                                                                   }
                                                                                                   §§goto(addr258);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr190:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          this.§'1§.visible = !this.§6!^§.§1?§.§7"4§();
                                                                                          §§goto(addr179);
                                                                                       }
                                                                                    }
                                                                                    addr179:
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                              §§goto(addr193);
                                                                           }
                                                                           §§goto(addr192);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr218);
                                                                        }
                                                                     }
                                                                     §§goto(addr190);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(!(_loc3_ && _loc2_))
                                                                     {
                                                                        §§push(this.§'r§.§&i§);
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           §§push(!§§pop());
                                                                        }
                                                                        if(_loc3_)
                                                                        {
                                                                           continue loop23;
                                                                        }
                                                                        if(_loc3_ && this)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop26;
                                                                        }
                                                                        §§goto(addr238);
                                                                        §§goto(addr62);
                                                                     }
                                                                     addr119:
                                                                  }
                                                                  §§goto(addr198);
                                                               }
                                                               §§goto(addr90);
                                                            }
                                                         }
                                                         continue loop5;
                                                         return;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop6;
                                                }
                                                addr93:
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
                  §§goto(addr235);
               }
            }
         }
         §§goto(addr258);
      }
      
      public function §;!J§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§'r§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     addr62:
                     §§push(this.§'r§.§;!J§());
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr66:
                     return 0;
                  }
                  return §§pop();
               }
               §§goto(addr66);
            }
            §§goto(addr62);
         }
         §§goto(addr66);
      }
      
      private function §#<§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.update(0);
         }
         loop0:
         while(true)
         {
            StateLevelEditorTestPlay.§^!M§ = false;
            loop1:
            while(true)
            {
               §§push(this.§'r§);
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
                           addr80:
                           while(!_loc2_)
                           {
                              §§push(this.§6!9§());
                              if(!(_loc2_ && this))
                              {
                                 if(_loc2_ && this)
                                 {
                                    continue loop3;
                                 }
                                 §§push(!§§pop());
                              }
                              if(!_loc3_)
                              {
                                 continue loop4;
                              }
                           }
                           continue loop0;
                        }
                     }
                     while(§§pop())
                     {
                        if(_loc3_ || _loc2_)
                        {
                           if(_loc3_)
                           {
                              §§push(this.§'r§);
                              if(!_loc3_)
                              {
                                 continue loop2;
                              }
                              §§pop().§ f§();
                           }
                           else
                           {
                              §§goto(addr80);
                           }
                        }
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
         }
      }
      
      private function §'6§(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:BitmapData = null;
         var _loc4_:ByteArray = null;
         if(!(_loc5_ && this))
         {
            this.§'r§.onPhysicsEnabled();
            if(_loc6_)
            {
               if(this.§7-§.§"T§().length > 0)
               {
                  addr44:
                  _loc2_ = this.§6!^§.§8#§.§`!U§();
                  if(!(_loc5_ && this))
                  {
                     if(!_loc2_.valid)
                     {
                        _loc2_ = new Object();
                        §§goto(addr60);
                     }
                     else
                     {
                        _loc3_ = StateLevelEditorTestPlay.§%P§();
                        if(!_loc5_)
                        {
                           if(_loc3_ == null)
                           {
                              addr86:
                              _loc3_ = new BitmapData(100,100);
                           }
                           _loc4_ = include.encode(_loc3_);
                           if(!_loc5_)
                           {
                              _loc2_.screen = Base64.§<_§(_loc4_);
                              if(!_loc6_)
                              {
                              }
                              §§goto(addr111);
                           }
                           _loc2_.name = this.§7-§.§"T§();
                           §§goto(addr111);
                        }
                        §§goto(addr86);
                     }
                  }
                  addr60:
                  if(!_loc5_)
                  {
                     addr111:
                     this.§9!u§ = JSON.stringify(_loc2_);
                     if(!_loc5_)
                     {
                        this.§7-§.§?D§();
                        if(_loc6_ || _loc3_)
                        {
                        }
                        §§goto(addr143);
                     }
                  }
                  §,!q§.§2=§.completeQuest(this.§9!u§);
                  §§goto(addr143);
               }
               addr143:
               return;
            }
         }
         §§goto(addr44);
      }
      
      private function §=G§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§<j§ = null;
         if(_loc4_ || _loc2_)
         {
            if(this.§="$§)
            {
               if(_loc4_)
               {
                  §§goto(addr32);
               }
            }
            var _loc1_:§2J§ = this.§'r§.§=!"§();
            if(!(_loc3_ && _loc1_))
            {
               if(_loc1_)
               {
                  addr57:
                  _loc2_ = §^!]§.§&I§(_loc1_);
                  if(_loc4_)
                  {
                     _loc2_.§3!N§ = this.§,!?§;
                     loop0:
                     while(true)
                     {
                        addr81:
                        while(true)
                        {
                           this.§="$§ = true;
                           continue loop0;
                        }
                     }
                     addr100:
                  }
                  while(true)
                  {
                     this.§^q§.visible = false;
                     if(_loc3_ && this)
                     {
                        continue;
                     }
                     if(_loc4_)
                     {
                        if(true)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr100);
                     }
                     §§goto(addr81);
                  }
               }
               return;
            }
            §§goto(addr57);
         }
         addr32:
      }
      
      private function §,!?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§="$§ = false;
         }
         do
         {
            this.§^q§.visible = true;
            do
            {
               this.§=G§();
            }
            while(_loc2_ && _loc2_);
            
         }
         while(_loc2_ && _loc2_);
         
      }
      
      private function §6%§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§7-§ = new §,5§(§`7§.§>"?§.Views.PopupView_PrePublish[0],this.§6!^§.§+"2§.§9B§(),this.§'r§);
         }
         do
         {
            this.§7-§.open();
            do
            {
               this.§<"9§.hide();
            }
            while(!(_loc1_ || this));
            
         }
         while(!_loc1_);
         
      }
      
      public function get §-!$§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§'r§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§goto(addr57);
                  }
               }
               return "";
            }
            §§goto(addr57);
         }
         addr57:
         return this.§'r§.§-!$§;
      }
      
      public function §?K§(param1:§=q§ = null) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§'r§);
            loop0:
            for(; §§pop(); while(_loc2_ || param1)
            {
               §§push(§§pop().§-!$§);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(Quest.§@!?§);
                  if(_loc2_ || this)
                  {
                     §§goto(addr379);
                     §§push(§§pop() == §§pop());
                  }
                  §§goto(addr406);
               }
               §§goto(addr404);
            })
            {
               loop1:
               while(true)
               {
                  §§push(this.§'r§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().§-!$§);
                     addr404:
                     while(true)
                     {
                        §§push(Quest.§;!y§);
                        addr406:
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
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc2_)
                                             {
                                                if(!(_loc2_ || _loc3_))
                                                {
                                                   break;
                                                }
                                                if(_loc3_ && param1)
                                                {
                                                   continue loop1;
                                                }
                                                §§push(false);
                                             }
                                             else
                                             {
                                                loop12:
                                                while(true)
                                                {
                                                   addr344:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(param1));
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop15:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr350:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1.§%!0§());
                                                                     addr320:
                                                                     while(true)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        addr321:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           if(_loc3_ && this)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 break loop11;
                                                                              }
                                                                              addr419:
                                                                           }
                                                                        }
                                                                        continue loop0;
                                                                        addr233:
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(param1));
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop23:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop24:
                                                                              while(!_loc3_)
                                                                              {
                                                                                 §§pop();
                                                                                 loop25:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1.isTexture());
                                                                                    if(!(_loc3_ && _loc3_))
                                                                                    {
                                                                                       if(!(_loc2_ || param1))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(Boolean(§§pop()));
                                                                                       while(true)
                                                                                       {
                                                                                          loop44:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             loop45:
                                                                                             while(_loc2_ || _loc3_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   loop26:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      loop27:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§=j§);
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            addr267:
                                                                                                         }
                                                                                                         §§push(!§§pop());
                                                                                                         loop28:
                                                                                                         for(; !(_loc3_ && this); if(!(_loc3_ && this))
                                                                                                         {
                                                                                                            continue loop14;
                                                                                                         })
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  loop30:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Boolean(param1));
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        if(_loc3_ && _loc2_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(§§pop());
                                                                                                                        loop31:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc2_ || _loc2_))
                                                                                                                           {
                                                                                                                              continue loop15;
                                                                                                                           }
                                                                                                                           if(_loc3_ && param1)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 loop33:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       continue loop31;
                                                                                                                                    }
                                                                                                                                    if(!(_loc2_ || _loc2_))
                                                                                                                                    {
                                                                                                                                       continue loop45;
                                                                                                                                    }
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       loop34:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc2_ || param1))
                                                                                                                                                   {
                                                                                                                                                      return §§pop();
                                                                                                                                                   }
                                                                                                                                                   §§pop();
                                                                                                                                                   loop35:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc2_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc2_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop12;
                                                                                                                                                               }
                                                                                                                                                               §§push(false);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr332:
                                                                                                                                                            }
                                                                                                                                                            §§push(param1.§9!^§());
                                                                                                                                                            loop36:
                                                                                                                                                            while(!(_loc3_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               if(_loc3_ && param1)
                                                                                                                                                               {
                                                                                                                                                                  continue loop33;
                                                                                                                                                               }
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(!§§pop());
                                                                                                                                                                  loop37:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     loop38:
                                                                                                                                                                     while(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§'r§);
                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop().§?K§(param1));
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    return §§pop();
                                                                                                                                                                                 }
                                                                                                                                                                                 addr135:
                                                                                                                                                                                 continue loop38;
                                                                                                                                                                                 addr28:
                                                                                                                                                                                 if(_loc3_ && param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop38;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc3_ && _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop26;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc3_ && this)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr52);
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!_loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break loop38;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop35;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr83:
                                                                                                                                                                                       §§push(false);
                                                                                                                                                                                       if(_loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break loop37;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop36;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr264:
                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr266:
                                                                                                                                                                                       §§push(false);
                                                                                                                                                                                       break loop30;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop27;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(true);
                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr28);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr83);
                                                                                                                                                                                 if(!(_loc3_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop28;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop26;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop0;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop2;
                                                                                                                                                                     }
                                                                                                                                                                     if(!(_loc2_ || _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        break loop0;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr135);
                                                                                                                                                                     §§push(false);
                                                                                                                                                                  }
                                                                                                                                                                  return §§pop();
                                                                                                                                                                  addr125:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop34;
                                                                                                                                                            return §§pop();
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         continue loop30;
                                                                                                                                                      }
                                                                                                                                                      if(!(_loc3_ && param1))
                                                                                                                                                      {
                                                                                                                                                         continue loop21;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr350);
                                                                                                                                                   }
                                                                                                                                                   continue loop25;
                                                                                                                                                   addr425:
                                                                                                                                                }
                                                                                                                                                continue loop5;
                                                                                                                                             }
                                                                                                                                             continue loop24;
                                                                                                                                          }
                                                                                                                                          addr226:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc3_ && _loc2_)
                                                                                                                                             {
                                                                                                                                                continue loop44;
                                                                                                                                             }
                                                                                                                                             §§goto(addr233);
                                                                                                                                          }
                                                                                                                                          continue loop11;
                                                                                                                                       }
                                                                                                                                       §§goto(addr320);
                                                                                                                                    }
                                                                                                                                    §§goto(addr125);
                                                                                                                                 }
                                                                                                                                 continue loop45;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop6;
                                                                                                                     }
                                                                                                                     §§goto(addr226);
                                                                                                                  }
                                                                                                                  §§goto(addr267);
                                                                                                               }
                                                                                                               §§goto(addr264);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop22;
                                                                                                         return §§pop();
                                                                                                      }
                                                                                                   }
                                                                                                   addr305:
                                                                                                }
                                                                                                §§goto(addr262);
                                                                                             }
                                                                                             continue loop23;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr305);
                                                                                 }
                                                                                 return §§pop();
                                                                              }
                                                                              §§goto(addr321);
                                                                           }
                                                                           §§goto(addr295);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr332);
                                                            }
                                                         }
                                                         if(_loc2_ || param1)
                                                         {
                                                            return §§pop();
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr398);
                                          }
                                          §§goto(addr344);
                                       }
                                       while(true)
                                       {
                                          §§push(this.§'r§);
                                          continue loop0;
                                       }
                                    }
                                    addr379:
                                 }
                                 §§goto(addr419);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr425);
            §§push(true);
         }
         §§goto(addr266);
      }
      
      private function §6!9§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§"m§ == null);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function §^U§(param1:String = null) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§'r§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  addr245:
                  return true;
                  addr244:
               }
               loop1:
               while(true)
               {
                  §§push(this.§'r§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().§-!$§);
                     addr224:
                     while(true)
                     {
                        §§push(Quest.§;!y§);
                        loop4:
                        while(true)
                        {
                           §§push(§§pop() == §§pop());
                           addr227:
                           while(true)
                           {
                              §§push(§§pop());
                              addr238:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr240:
                                       while(true)
                                       {
                                          §§push(this.§'r§);
                                          addr202:
                                          while(true)
                                          {
                                             §§push(§§pop().§-!$§);
                                             addr203:
                                             while(true)
                                             {
                                                §§push(Quest.§@!?§);
                                                if(!_loc3_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() == §§pop());
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                    addr239:
                                 }
                                 while(true)
                                 {
                                    addr209:
                                    while(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(this.§'r§);
                                          if(_loc3_)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop0;
                                             }
                                             continue loop2;
                                          }
                                          §§goto(addr202);
                                       }
                                       continue loop0;
                                    }
                                    addr210:
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr218:
                                       return false;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr187);
      }
      
      public function §5;§(param1:§=q§ = null) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§?K§(param1));
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
                              §§push(this.§'r§);
                              loop5:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 if(!_loc2_)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop3;
                                    }
                                    if(_loc2_ && this)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop());
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       continue loop2;
                                    }
                                    if(§§pop())
                                    {
                                       addr54:
                                       break;
                                    }
                                 }
                                 addr82:
                                 while(true)
                                 {
                                    §§pop();
                                    if(!(_loc3_ || param1))
                                    {
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 continue loop4;
                              }
                              §§goto(addr55);
                           }
                        }
                     }
                     §§goto(addr54);
                  }
               }
               if(!(_loc2_ && param1))
               {
                  addr55:
                  return §§pop();
               }
            }
         }
         §§goto(addr100);
      }
      
      public function § b§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§'r§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§'r§);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop().§-!$§);
                        loop3:
                        while(true)
                        {
                           §§push(Quest.§9!h§);
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
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr163:
                                          while(true)
                                          {
                                             §§push(this.§6!^§.§8#§.getBirdCount() < 1);
                                          }
                                       }
                                       addr162:
                                    }
                                    while(true)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                §§push(this.§'r§);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(§§pop().§-!$§);
                                                   addr70:
                                                   while(_loc1_)
                                                   {
                                                      §§push(Quest.§-!z§);
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§push(§§pop() == §§pop());
                                                         if(!_loc2_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc1_ || this))
                                                               {
                                                                  continue loop6;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  addr62:
                                                                  return §§pop();
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     if(!(_loc2_ && _loc1_))
                                                                     {
                                                                        §§pop();
                                                                        if(_loc2_)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!_loc1_)
                                                                           {
                                                                              break loop11;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        if(_loc2_ && _loc1_)
                                                                        {
                                                                           addr136:
                                                                           §§push(false);
                                                                           break loop14;
                                                                        }
                                                                        if(!(_loc2_ && _loc1_))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§'r§);
                                                                              if(_loc1_)
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                              continue loop12;
                                                                           }
                                                                           addr126:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr167:
                                                                           return true;
                                                                        }
                                                                     }
                                                                     return §§pop();
                                                                  }
                                                                  §§goto(addr162);
                                                                  addr50:
                                                                  §§push(§§pop() == §§pop());
                                                                  if(_loc1_ || _loc1_)
                                                                  {
                                                                     if(_loc1_)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§goto(addr62);
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                               }
                                                               §§goto(addr163);
                                                               addr100:
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr100);
                                                         addr41:
                                                         §§push(Quest.§9!h§);
                                                         if(!(_loc1_ || _loc2_))
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr50);
                                                      }
                                                      return §§pop();
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr136);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr167);
            }
         }
         §§goto(addr126);
      }
      
      public function §"H§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Array = ["Static","Snow","Backgrounds"];
         if(!_loc3_)
         {
            §§push(this.§'r§);
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
                        while(true)
                        {
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc4_)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§pop();
                                    addr115:
                                    while(!_loc3_)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc2_.indexOf(param1) == -1);
                                          if(_loc3_ && _loc2_)
                                          {
                                             while(!(_loc4_ || this))
                                             {
                                                continue loop1;
                                             }
                                          }
                                          else
                                          {
                                             addr89:
                                          }
                                          continue loop9;
                                          return §§pop();
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       continue;
                                    }
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                    if(_loc4_)
                                    {
                                       §§push(false);
                                       break;
                                    }
                                    §§goto(addr115);
                                 }
                                 §§goto(addr89);
                              }
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr134);
                  }
               }
            }
         }
         §§goto(addr127);
      }
      
      public function §8§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§'r§);
            loop0:
            while(true)
            {
               §§push(§§pop().§-!$§);
               addr103:
               while(true)
               {
                  §§push(Quest.§;!y§);
                  addr105:
                  while(true)
                  {
                     §§push(§§pop() == §§pop());
                     addr106:
                     loop3:
                     while(true)
                     {
                        §§push(!§§pop());
                        addr107:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 addr68:
                                 loop7:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       continue;
                                    }
                                    if(_loc2_ || _loc1_)
                                    {
                                       §§push(true);
                                       break;
                                    }
                                    if(!_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       continue loop7;
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc1_ && _loc2_)
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop0;
                                       }
                                       addr109:
                                    }
                                    if(!_loc1_)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 return §§pop();
                              }
                              addr67:
                           }
                           §§goto(addr109);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      public function §2x§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§'r§);
            loop0:
            for(; §§pop(); loop6:
            for(; !(_loc2_ && _loc2_); for(; !(_loc2_ && _loc2_); loop10:
            while(true)
            {
               §§push(this.§'r§);
               if(_loc2_ && this)
               {
                  break;
               }
               if(!_loc2_)
               {
                  §§pop().dispose();
                  loop11:
                  while(true)
                  {
                     §§push(Boolean(this.§'1§));
                     loop12:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    this.§'1§.parent.removeChild(this.§'1§);
                                    addr144:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr138:
                              }
                              loop18:
                              while(true)
                              {
                                 this.§'1§ = null;
                                 loop19:
                                 for(; !_loc2_; while(true)
                                 {
                                    if(!(_loc1_ || _loc1_))
                                    {
                                       continue loop19;
                                    }
                                    §§goto(addr92);
                                 })
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       while(true)
                                       {
                                          §§push(this.§^q§);
                                          if(_loc1_ || _loc2_)
                                          {
                                             if(!§§pop().parent)
                                             {
                                                while(true)
                                                {
                                                   this.§^q§ = null;
                                                   loop23:
                                                   while(true)
                                                   {
                                                      if(!(_loc1_ || _loc2_))
                                                      {
                                                         while(!(_loc2_ && _loc2_))
                                                         {
                                                            §§push(this.§^q§);
                                                            while(true)
                                                            {
                                                               §§pop().parent.removeChild(this.§^q§);
                                                               continue loop19;
                                                            }
                                                            continue loop23;
                                                         }
                                                         loop14:
                                                         while(_loc1_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               §§push(Boolean(this.§'1§.parent));
                                                               if(_loc1_ || _loc1_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               addr151:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  continue loop14;
                                                               }
                                                            }
                                                         }
                                                         continue loop11;
                                                         addr72:
                                                      }
                                                      this.§'r§ = null;
                                                      if(_loc2_ && _loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc1_)
                                                      {
                                                         continue loop19;
                                                      }
                                                      if(!_loc1_)
                                                      {
                                                         continue loop18;
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         §§goto(addr40);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr138);
                                                      }
                                                   }
                                                   addr92:
                                                }
                                             }
                                             §§goto(addr72);
                                          }
                                          §§goto(addr81);
                                       }
                                       addr106:
                                    }
                                    §§goto(addr240);
                                 }
                                 continue loop10;
                              }
                           }
                           addr136:
                        }
                        §§goto(addr151);
                     }
                  }
               }
               §§goto(addr217);
            })
            {
               §§push(§1k§.§?s§);
               if(_loc1_)
               {
                  §§pop().removeEventListener(§§pop(),this.§&!`§);
                  continue;
               }
               §§goto(addr201);
            })
            {
               §§push(§1k§.§7p§);
               while(!(_loc2_ && _loc1_))
               {
                  §§pop().removeEventListener(§§pop(),this.§&!`§);
                  while(_loc1_)
                  {
                     §§push(this.§'r§);
                     continue loop6;
                     if(_loc1_ || this)
                     {
                        break loop0;
                     }
                  }
                  §§goto(addr236);
               }
               §§goto(addr219);
            })
            {
               while(true)
               {
                  this.§6!^§.§4p§.§4!G§();
                  addr240:
                  while(true)
                  {
                     §§push(this.§'r§);
                     addr217:
                     while(true)
                     {
                        §§push(§1k§.§1g§);
                        addr219:
                        while(true)
                        {
                           §§pop().removeEventListener(§§pop(),this.§^!§);
                           addr232:
                           while(true)
                           {
                              §§push(this.§'r§);
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr106);
      }
      
      private function §]!'§(param1:§1k§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=G§();
         }
      }
      
      private function §^!§(param1:§1k§ = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§=G§();
         }
         §§push(this.§'r§.§-!$§);
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(Quest.§@!?§);
               loop1:
               while(§§pop() != §§pop())
               {
                  §§push(Boolean(param1));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
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
                                 §§push(param1.§-",§);
                                 while(true)
                                 {
                                    §§push(Quest.§"!!§);
                                    addr515:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    addr62:
                                    if(_loc3_ && param1)
                                    {
                                       continue;
                                    }
                                    §§push(Quest.§&P§);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc4_ || param1)
                                          {
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(!(_loc3_ && this))
                                                      {
                                                         §§push(this.§6!^§);
                                                         if(!_loc3_)
                                                         {
                                                            if(_loc4_ || param1)
                                                            {
                                                               if(_loc4_ || param1)
                                                               {
                                                                  §§push(§§pop().§>k§);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§pop().goToCastleView();
                                                                     addr126:
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr238:
                                                                           if(_loc3_ && param1)
                                                                           {
                                                                              loop29:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr277:
                                                                                    §§push(this.§6!^§);
                                                                                    if(!(_loc3_ && this))
                                                                                    {
                                                                                       if(!(_loc3_ && _loc2_))
                                                                                       {
                                                                                          §§push(§§pop().§1?§);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§push(false);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr297:
                                                                                                §§pop().§ !v§(§§pop());
                                                                                                loop27:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc4_ || _loc2_)
                                                                                                   {
                                                                                                      if(_loc4_ || _loc2_)
                                                                                                      {
                                                                                                         if(_loc4_ || _loc3_)
                                                                                                         {
                                                                                                            addr231:
                                                                                                            §§push(param1.§'4§);
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               addr235:
                                                                                                               if(§§pop() == Quest.§9!h§)
                                                                                                               {
                                                                                                                  addr236:
                                                                                                                  this.§1!D§();
                                                                                                                  §§goto(addr238);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         loop31:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param1.§-",§);
                                                                                                            addr432:
                                                                                                            loop32:
                                                                                                            while(!(_loc3_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(Quest.§;!y§);
                                                                                                               loop33:
                                                                                                               while(_loc4_ || param1)
                                                                                                               {
                                                                                                                  if(!(_loc3_ && this))
                                                                                                                  {
                                                                                                                     addr455:
                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                     loop13:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        loop14:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              addr458:
                                                                                                                              §§push(this.§<"9§);
                                                                                                                              if(!(_loc3_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§pop().show();
                                                                                                                                 addr424:
                                                                                                                                 this.§6!^§.§+"2§.§9B§().§%w§("Wood");
                                                                                                                                 addr413:
                                                                                                                                 §§push(this.§6!^§.§1?§);
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    addr417:
                                                                                                                                    §§push(false);
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       §§pop().§ !v§(§§pop());
                                                                                                                                       addr420:
                                                                                                                                       §§push(this.§6!^§);
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          addr394:
                                                                                                                                          §§pop().§4p§.§5R§();
                                                                                                                                          if(_loc4_ || this)
                                                                                                                                          {
                                                                                                                                             if(!(_loc3_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                addr382:
                                                                                                                                                §§push(this.§6!^§.§4p§);
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   §§pop().§`!c§(false);
                                                                                                                                                   addr367:
                                                                                                                                                   §§push(this.§6!^§);
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr372:
                                                                                                                                                         §§pop().§>k§.§!"1§(this.§'r§.§2"0§());
                                                                                                                                                         addr376:
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr420);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr41);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr413);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr420);
                                                                                                                                                   addr387:
                                                                                                                                                }
                                                                                                                                                §§goto(addr394);
                                                                                                                                             }
                                                                                                                                             addr520:
                                                                                                                                             this.§6!^§.§8#§.§ f§();
                                                                                                                                             this.§0!h§();
                                                                                                                                             addr41:
                                                                                                                                             return;
                                                                                                                                             addr522:
                                                                                                                                             addr509:
                                                                                                                                             addr518:
                                                                                                                                          }
                                                                                                                                          addr502:
                                                                                                                                          this.§6!^§.§1?§.§ !v§(true);
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             break loop1;
                                                                                                                                          }
                                                                                                                                          §§goto(addr41);
                                                                                                                                          addr501:
                                                                                                                                          addr498:
                                                                                                                                          addr500:
                                                                                                                                       }
                                                                                                                                       §§goto(addr424);
                                                                                                                                    }
                                                                                                                                    §§goto(addr502);
                                                                                                                                 }
                                                                                                                                 §§goto(addr501);
                                                                                                                                 addr468:
                                                                                                                                 addr428:
                                                                                                                              }
                                                                                                                              addr548:
                                                                                                                              §§pop().hide();
                                                                                                                              §§goto(addr41);
                                                                                                                              addr549:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(Boolean(param1));
                                                                                                                              loop15:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 addr326:
                                                                                                                                 addr477:
                                                                                                                                 loop16:
                                                                                                                                 while(_loc4_ || param1)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       loop17:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc3_ && param1)
                                                                                                                                          {
                                                                                                                                             addr485:
                                                                                                                                             while(_loc4_)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                continue loop31;
                                                                                                                                             }
                                                                                                                                             continue loop2;
                                                                                                                                             addr485:
                                                                                                                                          }
                                                                                                                                          §§pop();
                                                                                                                                          while(!(_loc3_ && this))
                                                                                                                                          {
                                                                                                                                             if(_loc4_ || param1)
                                                                                                                                             {
                                                                                                                                                if(_loc4_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(param1.§-",§);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Quest.§&P§);
                                                                                                                                                      addr253:
                                                                                                                                                      addr53:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() == §§pop());
                                                                                                                                                         continue loop17;
                                                                                                                                                      }
                                                                                                                                                      if(_loc3_ && _loc3_)
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      if(!_loc4_)
                                                                                                                                                      {
                                                                                                                                                         continue loop32;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr62);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr522);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr468);
                                                                                                                                             }
                                                                                                                                             §§goto(addr41);
                                                                                                                                          }
                                                                                                                                          §§goto(addr394);
                                                                                                                                       }
                                                                                                                                       continue loop31;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          continue loop29;
                                                                                                                                       }
                                                                                                                                       §§push(Boolean(param1));
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(!(_loc4_ || _loc2_))
                                                                                                                                          {
                                                                                                                                             continue loop16;
                                                                                                                                          }
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             loop28:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   addr205:
                                                                                                                                                   §§pop();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_ || this)
                                                                                                                                                      {
                                                                                                                                                         if(_loc4_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc4_ || param1))
                                                                                                                                                            {
                                                                                                                                                               continue loop5;
                                                                                                                                                            }
                                                                                                                                                            §§push(param1.§-",§);
                                                                                                                                                            loop26:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Quest.§9!h§);
                                                                                                                                                               addr141:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc3_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc3_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc3_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop28;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop33;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr253);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr235);
                                                                                                                                                               }
                                                                                                                                                               if(!_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop15;
                                                                                                                                                               }
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop4;
                                                                                                                                                               }
                                                                                                                                                               while(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc2_);
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop26;
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr53);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr231);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               this.§+"0§();
                                                                                                                                                               if(!(_loc4_ || this))
                                                                                                                                                               {
                                                                                                                                                                  continue loop27;
                                                                                                                                                               }
                                                                                                                                                               if(_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr41);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr509);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr502);
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                      §§goto(addr205);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr376);
                                                                                                                                                }
                                                                                                                                                §§goto(addr254);
                                                                                                                                             }
                                                                                                                                             continue loop14;
                                                                                                                                             addr201:
                                                                                                                                          }
                                                                                                                                          §§goto(addr169);
                                                                                                                                       }
                                                                                                                                       §§goto(addr201);
                                                                                                                                    }
                                                                                                                                    while(!§§pop())
                                                                                                                                    {
                                                                                                                                       §§push(_loc2_);
                                                                                                                                       break loop32;
                                                                                                                                    }
                                                                                                                                    §§goto(addr518);
                                                                                                                                 }
                                                                                                                                 while(_loc4_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       continue loop13;
                                                                                                                                    }
                                                                                                                                    §§goto(addr485);
                                                                                                                                    §§goto(addr326);
                                                                                                                                 }
                                                                                                                                 continue loop3;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr376);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr515);
                                                                                                                  }
                                                                                                                  §§goto(addr517);
                                                                                                               }
                                                                                                               while(!_loc3_)
                                                                                                               {
                                                                                                                  if(§§pop() != §§pop())
                                                                                                                  {
                                                                                                                     §§push(Boolean(param1));
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        §§goto(addr477);
                                                                                                                        §§push(§§pop());
                                                                                                                     }
                                                                                                                     §§goto(addr485);
                                                                                                                  }
                                                                                                                  §§goto(addr498);
                                                                                                               }
                                                                                                               continue loop1;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr495);
                                                                                                               §§goto(addr432);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr502);
                                                                                                      }
                                                                                                      §§goto(addr458);
                                                                                                   }
                                                                                                   §§goto(addr342);
                                                                                                }
                                                                                                addr183:
                                                                                                §§goto(addr376);
                                                                                             }
                                                                                             §§goto(addr417);
                                                                                          }
                                                                                          §§goto(addr424);
                                                                                       }
                                                                                       §§goto(addr520);
                                                                                    }
                                                                                    §§goto(addr382);
                                                                                 }
                                                                                 §§goto(addr549);
                                                                              }
                                                                           }
                                                                           if(_loc4_)
                                                                           {
                                                                              §§goto(addr183);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr387);
                                                                           }
                                                                        }
                                                                        addr135:
                                                                        §§goto(addr376);
                                                                     }
                                                                     §§goto(addr173);
                                                                  }
                                                                  §§goto(addr372);
                                                               }
                                                               §§goto(addr500);
                                                            }
                                                            §§goto(addr367);
                                                         }
                                                         §§goto(addr277);
                                                      }
                                                      §§goto(addr428);
                                                   }
                                                   §§goto(addr236);
                                                }
                                                §§goto(addr206);
                                             }
                                             §§goto(addr171);
                                          }
                                          §§goto(addr126);
                                       }
                                       §§goto(addr372);
                                    }
                                    §§goto(addr141);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr517);
                        }
                     }
                  }
               }
               §§goto(addr548);
            }
         }
         §§goto(addr135);
      }
      
      private function §1!D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§2y§.§2=§.§-!=§())
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§"m§ = this.§6!^§.§+"2§.§9B§().§[G§();
               }
               §§push(this.§6!^§);
               loop0:
               while(true)
               {
                  §§push(§§pop().§+"2§);
                  addr117:
                  while(true)
                  {
                     §§push(§§pop().§9B§());
                     addr118:
                     while(true)
                     {
                        §§pop().getItemByName("Categories").setVisibility(false);
                        addr122:
                        while(true)
                        {
                           §§push(this.§6!^§);
                           continue loop0;
                        }
                     }
                  }
               }
               addr151:
            }
            else
            {
               this.§7Q§ = true;
               if(_loc1_)
               {
                  if(!(_loc1_ || _loc1_))
                  {
                     §§goto(addr151);
                  }
                  §§goto(addr19);
               }
            }
            §§goto(addr79);
         }
         §§goto(addr19);
      }
      
      private function §+"0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§6!^§);
            while(true)
            {
               §§push(§§pop().§+"2§);
               loop1:
               while(true)
               {
                  §§push(§§pop().§9B§());
                  loop2:
                  while(true)
                  {
                     §§pop().getItemByName("Categories").setVisibility(true);
                     loop3:
                     while(true)
                     {
                        §§push(this.§6!^§);
                        addr96:
                        loop4:
                        while(true)
                        {
                           §§push(§§pop().§+"2§);
                           addr97:
                           while(!(_loc1_ && _loc1_))
                           {
                              §§push(§§pop().§9B§());
                              while(!_loc1_)
                              {
                                 §§pop().getItemByName("Categories2").setVisibility(false);
                                 loop7:
                                 while(this.§"m§ != null)
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       continue loop4;
                                    }
                                    addr83:
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          if(!(_loc2_ || _loc2_))
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop7;
                                    }
                                    continue loop3;
                                 }
                                 return;
                              }
                              continue loop2;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               addr57:
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §§push(§§pop().§+"2§);
               if(!_loc1_)
               {
                  §§push(§§pop().§9B§());
                  if(!_loc1_)
                  {
                     §§pop().§%w§(this.§"m§);
                     §§goto(addr83);
                  }
                  §§goto(addr105);
               }
               §§goto(addr97);
            }
         }
         while(true)
         {
            §§push(this.§6!^§);
            if(!(_loc1_ && this))
            {
               §§goto(addr57);
            }
            §§goto(addr96);
         }
      }
      
      private function get §8!-§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§'r§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     addr58:
                     §§push(this.§'r§.§-!$§);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr62:
                     return Quest.§@!?§;
                  }
                  return §§pop();
               }
               §§goto(addr62);
            }
         }
         §§goto(addr58);
      }
      
      private function §+<§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2x§();
         }
      }
      
      private function §%@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§6!^§);
            loop0:
            while(true)
            {
               §§pop().§1?§.§ !v§(true);
               loop1:
               while(true)
               {
                  §§push(this.§'r§);
                  while(true)
                  {
                     §§pop().§8!K§();
                     loop3:
                     while(true)
                     {
                        §§push(this.§'r§);
                        if(!(_loc1_ || this))
                        {
                           break;
                        }
                        §§pop().update(0);
                        loop4:
                        while(true)
                        {
                           §§push(this.§6!^§);
                           loop5:
                           while(!_loc2_)
                           {
                              §§push(§§pop().§+"2§);
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop().§9B§());
                                 loop7:
                                 while(true)
                                 {
                                    §§pop().getItemByName("ButtonCheck").setVisibility(false);
                                    loop8:
                                    while(_loc1_ || _loc1_)
                                    {
                                       if(!(_loc1_ || _loc1_))
                                       {
                                          continue loop1;
                                       }
                                       while(true)
                                       {
                                          §§push(this.§6!^§);
                                          while(!_loc2_)
                                          {
                                             §§push(§§pop().§+"2§);
                                             continue loop6;
                                             addr100:
                                             §§push(this.§6!^§);
                                             if(!(_loc1_ || this))
                                             {
                                                continue;
                                             }
                                             §§push(§§pop().§+"2§);
                                             if(!(_loc1_ || _loc2_))
                                             {
                                                continue loop6;
                                             }
                                             addr46:
                                             §§push(§§pop().§9B§());
                                             if(_loc1_ || _loc2_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§pop().getItemByName("Button_Cancel").setVisibility(true);
                                                   if(!(_loc1_ || _loc1_))
                                                   {
                                                      while(_loc1_)
                                                      {
                                                         §§goto(addr100);
                                                      }
                                                      continue loop8;
                                                      addr98:
                                                   }
                                                   if(_loc1_)
                                                   {
                                                      return;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop7;
                                             }
                                             while(true)
                                             {
                                                §§pop().getItemByName("ButtonGravity").setVisibility(false);
                                                §§goto(addr98);
                                                §§goto(addr46);
                                             }
                                          }
                                          continue loop5;
                                       }
                                    }
                                    continue loop3;
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
         §§goto(addr126);
      }
      
      private function §&!`§(param1:§1k§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§6!^§);
            loop0:
            while(true)
            {
               §§push(§§pop().§+"2§);
               loop1:
               while(true)
               {
                  §§push(§§pop().§9B§());
                  loop2:
                  while(true)
                  {
                     §§pop().getItemByName("ButtonCheck").setVisibility(true);
                     loop3:
                     while(true)
                     {
                        §§push(this.§6!^§);
                        while(true)
                        {
                           §§push(§§pop().§+"2§);
                           addr88:
                           while(true)
                           {
                              §§push(§§pop().§9B§());
                              addr89:
                              while(_loc3_ || _loc2_)
                              {
                                 §§pop().getItemByName("ButtonGravity").setVisibility(true);
                              }
                              continue loop2;
                           }
                           addr34:
                           if(_loc2_ && _loc3_)
                           {
                              continue;
                           }
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           §§pop().§1?§.§ !v§(false);
                           if(!_loc3_)
                           {
                              loop9:
                              while(_loc3_)
                              {
                                 addr83:
                                 §§push(this.§6!^§);
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§goto(addr34);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop().§+"2§);
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       if(_loc2_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop().§9B§());
                                       if(_loc3_)
                                       {
                                          §§pop().getItemByName("Button_Cancel").setVisibility(false);
                                          continue loop9;
                                       }
                                       §§goto(addr89);
                                       §§goto(addr83);
                                    }
                                    §§goto(addr88);
                                    addr69:
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr69);
                              }
                              return;
                              addr65:
                              addr100:
                           }
                           if(!(_loc3_ || this))
                           {
                              continue loop3;
                           }
                           §§goto(addr65);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr100);
      }
      
      private function §?Y§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§'r§);
            if(_loc2_)
            {
               §§push(§§pop().§#D§());
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        addr51:
                        §§push(this.§'r§.§#D§());
                     }
                     else
                     {
                        §§goto(addr54);
                     }
                  }
                  §§goto(addr54);
               }
               return §§pop().description;
            }
            §§goto(addr51);
         }
         addr54:
         return "";
      }
      
      private function onQuestCompleted(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc4_ && this))
         {
            §§pop().§§slot[2] = null;
            if(_loc5_ || _loc3_)
            {
               addr40:
               var event:Event = param1;
            }
            try
            {
               this.§7-§.close();
               if(!_loc4_)
               {
                  this.§7-§ = null;
                  loop0:
                  while(true)
                  {
                     §§push(this.§6!^§);
                     while(true)
                     {
                        §§pop().§+"2§.§9B§().§=!^§();
                        while(true)
                        {
                           §§push(this.§6!^§);
                           if(_loc4_)
                           {
                              break;
                           }
                           §§pop().§4p§.§4!G§();
                           loop3:
                           for(; _loc5_; loop5:
                           for(; !(_loc4_ && _loc3_); if(!(_loc5_ || _loc3_))
                           {
                              continue;
                           },§4&§.§@!Q§(§4&§.§^!X§),if(_loc5_ || this)
                           {
                              if(false)
                              {
                                 §§goto(addr62);
                              }
                              addr216:
                              this.§2x§();
                           },§§goto(addr218))
                           {
                              §§push(§§newactivation());
                              loop6:
                              while(true)
                              {
                                 §§pop().§§slot[2] = new Timer(this.§8"3§,1);
                                 loop7:
                                 while(!_loc4_)
                                 {
                                    §§push(§§newactivation());
                                    loop8:
                                    while(true)
                                    {
                                       §§pop().§§slot[2].addEventListener(TimerEvent.TIMER_COMPLETE,this.§`I§);
                                       if(_loc5_ || param1)
                                       {
                                          if(_loc4_ && this)
                                          {
                                             continue loop7;
                                          }
                                          while(true)
                                          {
                                             addr62:
                                             while(true)
                                             {
                                                §§push(§§newactivation());
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                if(!_loc4_)
                                                {
                                                   §§pop().§§slot[2].start();
                                                   if(!(_loc5_ || _loc2_))
                                                   {
                                                      break loop8;
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop6;
                                             }
                                             continue loop8;
                                          }
                                       }
                                       break;
                                    }
                                    return;
                                 }
                                 §§goto(addr163);
                              }
                           })
                           {
                              if(!_loc5_)
                              {
                                 continue loop0;
                              }
                              this.§;C§ = new §]>§(§`7§.§>"?§.Views.PopupView_Rewards[0],this.§6!^§.§+"2§.§9B§(),this.§'r§.§+!d§().length + 1);
                              while(true)
                              {
                                 this.§;C§.open();
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr117);
            }
            catch(e:Error)
            {
               if(!_loc4_)
               {
                  §9!P§.log("Error parsing response");
               }
               §§goto(addr216);
            }
            §§goto(addr218);
         }
         §§goto(addr40);
      }
      
      protected function §`I§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§;C§);
            if(_loc2_ || param1)
            {
               if(§§pop())
               {
                  loop7:
                  while(true)
                  {
                     §§push(this.§;C§);
                     addr145:
                     while(true)
                     {
                        §§pop().close();
                        addr146:
                        while(true)
                        {
                           this.§;C§ = null;
                           addr120:
                           addr122:
                           while(_loc3_)
                           {
                              continue loop7;
                           }
                        }
                     }
                  }
                  addr143:
               }
               while(true)
               {
                  if((AngryBirdsFP11.§>" § as §'"#§).§[!W§)
                  {
                     if(!_loc3_)
                     {
                        this.§,!@§ = new §7q§(§`7§.§>"?§.Views.PopupView_LevelUp[0],this.§6!^§.§+"2§.§9B§());
                     }
                     §§push(this.§,!@§);
                     addr115:
                  }
                  else
                  {
                     this.§'R§(null);
                     if(!(_loc3_ && _loc2_))
                     {
                        if(_loc2_ || this)
                        {
                           if(!(_loc3_ && this))
                           {
                              §§goto(addr24);
                           }
                           §§goto(addr120);
                        }
                        else
                        {
                           §§goto(addr115);
                        }
                     }
                     loop5:
                     while(!(_loc2_ || this))
                     {
                        while(true)
                        {
                           §§push(this.§,!@§);
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§pop().mClip.addEventListener(§+1§.§9!R§,this.§'R§);
                           continue loop5;
                        }
                     }
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§goto(addr146);
                  }
                  while(true)
                  {
                     §§pop().open();
                     §§goto(addr91);
                  }
                  §§goto(addr122);
               }
               addr24:
               return;
            }
            §§goto(addr145);
         }
         §§goto(addr143);
      }
      
      protected function §'R§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§&!P§ = new §0Q§(§`7§.§>"?§.Views.PopupView_FinishLevel[0],this.§6!^§.§+"2§.§9B§());
            do
            {
               this.§&!P§.open();
            }
            while(_loc2_);
            
         }
      }
      
      private function §]d§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§'r§);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr57:
                     this.§'r§.refresh(this.§6!^§.§8#§.§4+§);
                  }
               }
               return;
            }
         }
         §§goto(addr57);
      }
      
      private function §=!w§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§'r§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§8!-§);
                  loop1:
                  while(true)
                  {
                     §§push(Quest.§@!?§);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc2_ || _loc3_)
                        {
                           §§push(!§§pop());
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop20:
                                 while(true)
                                 {
                                    §§pop();
                                    addr240:
                                    loop21:
                                    while(true)
                                    {
                                       §§push(this.§8!-§);
                                       loop19:
                                       while(true)
                                       {
                                          §§push(Quest.§9!h§);
                                          loop18:
                                          for(; _loc2_; continue loop19)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(_loc2_ || this)
                                             {
                                                if(!(_loc2_ || _loc3_))
                                                {
                                                   continue loop20;
                                                }
                                                §§push(!§§pop());
                                                if(_loc2_ || param1)
                                                {
                                                   while(true)
                                                   {
                                                      addr187:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push(this.§8!-§);
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  §§push(Quest.§&P§);
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() != §§pop())
                                                                     {
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§6!^§);
                                                                           if(!(_loc3_ && param1))
                                                                           {
                                                                              §§push(§§pop().§1?§);
                                                                              if(_loc2_)
                                                                              {
                                                                                 §§push(§§pop().§7"4§());
                                                                                 loop10:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§6!^§);
                                                                                          addr209:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().§1?§);
                                                                                             addr210:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().§ !v§(false);
                                                                                                addr212:
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr207:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       this.§%@§();
                                                                                       loop13:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc3_ && _loc3_))
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§8!-§);
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   if(_loc2_ || this)
                                                                                                   {
                                                                                                      if(!(_loc3_ && this))
                                                                                                      {
                                                                                                         §§push(Quest.§9!h§);
                                                                                                         if(_loc2_ || _loc3_)
                                                                                                         {
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               if(§§pop() == §§pop())
                                                                                                               {
                                                                                                                  if(_loc2_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(_loc2_ || this)
                                                                                                                     {
                                                                                                                        §§push(this.§6!9§());
                                                                                                                        if(!(_loc3_ && param1))
                                                                                                                        {
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                        continue loop10;
                                                                                                                     }
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  addr105:
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     continue loop13;
                                                                                                                  }
                                                                                                                  if(_loc2_ || param1)
                                                                                                                  {
                                                                                                                     if(!(_loc2_ || _loc2_))
                                                                                                                     {
                                                                                                                        continue loop9;
                                                                                                                     }
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        continue loop6;
                                                                                                                     }
                                                                                                                     this.§1!D§();
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        if(_loc2_ || this)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        addr244:
                                                                                                                        return;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr207);
                                                                                                                  }
                                                                                                                  §§goto(addr212);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                         continue loop8;
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   continue loop19;
                                                                                                }
                                                                                                continue loop7;
                                                                                             }
                                                                                             addr19:
                                                                                             return;
                                                                                             addr43:
                                                                                          }
                                                                                          continue loop21;
                                                                                       }
                                                                                       continue loop21;
                                                                                    }
                                                                                 }
                                                                                 addr206:
                                                                              }
                                                                              §§goto(addr210);
                                                                           }
                                                                           §§goto(addr209);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr43);
                                                      }
                                                   }
                                                   addr186:
                                                }
                                                §§goto(addr206);
                                             }
                                             §§goto(addr187);
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                                 addr239:
                              }
                              §§goto(addr186);
                           }
                        }
                        §§goto(addr239);
                     }
                  }
               }
            }
            §§goto(addr244);
         }
         §§goto(addr240);
      }
      
      private function play() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§6!^§.§+"2§.§^"!§();
         }
      }
      
      private function onPlay(param1:§0!t§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§'r§.onPhysicsEnabled();
         }
      }
      
      private function §&<§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§'r§);
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
                        while(true)
                        {
                           §§pop();
                           addr282:
                           while(true)
                           {
                              §§push(this.§'r§);
                              addr256:
                              while(true)
                              {
                                 §§push(§§pop().§-!$§);
                                 addr257:
                                 while(true)
                                 {
                                    §§push(Quest.§&P§);
                                    addr259:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                 }
                              }
                           }
                        }
                        addr281:
                     }
                     while(true)
                     {
                        loop9:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              §§push(this.§7-§);
                              if(_loc3_)
                              {
                                 if(§§pop() == null)
                                 {
                                    §§push(this.§&!P§);
                                    if(!_loc2_)
                                    {
                                       if(§§pop() == null)
                                       {
                                          §§push(this.§'r§);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             addr103:
                                             while(!(_loc2_ && _loc2_))
                                             {
                                                §§push(§§pop());
                                                if(_loc3_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      while(§§pop())
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            addr71:
                                                            if(_loc3_ || param1)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  this.§+"0§();
                                                                  addr82:
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr225:
                                                                     if(_loc2_)
                                                                     {
                                                                        this.§7-§ = null;
                                                                        addr223:
                                                                        this.§6!^§.§+"2§.§9B§().§"!U§();
                                                                        §§goto(addr225);
                                                                        addr232:
                                                                        addr252:
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr167:
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr198:
                                                                     if(!(_loc2_ && this))
                                                                     {
                                                                        §§push(this.§6!^§);
                                                                        if(!(_loc2_ && param1))
                                                                        {
                                                                           §§push(§§pop().§+"2§);
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§pop().mNextState = StateMap.§'=§;
                                                                              addr186:
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 §^! §.§#3§ = true;
                                                                                 §§goto(addr167);
                                                                              }
                                                                              if(!(_loc2_ && this))
                                                                              {
                                                                                 §§push(this.§7-§);
                                                                                 break loop9;
                                                                              }
                                                                              §§goto(addr282);
                                                                           }
                                                                        }
                                                                        §§goto(addr223);
                                                                     }
                                                                     addr274:
                                                                     this.§'r§.§4L§();
                                                                     break;
                                                                     addr275:
                                                                     addr262:
                                                                  }
                                                                  break;
                                                                  §§goto(addr223);
                                                               }
                                                               else
                                                               {
                                                                  this.§&!P§ = null;
                                                                  addr218:
                                                               }
                                                               §§goto(addr198);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!(_loc2_ && _loc2_))
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           if(!(_loc2_ && param1))
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr232);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr217:
                                                                        this.§&!P§.close();
                                                                        addr215:
                                                                        §§goto(addr218);
                                                                     }
                                                                     §§goto(addr275);
                                                                  }
                                                                  break;
                                                                  §§goto(addr71);
                                                               }
                                                               addr139:
                                                            }
                                                            §§goto(addr186);
                                                         }
                                                         §§goto(addr82);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr67:
                                                   }
                                                   continue loop9;
                                                   return;
                                                }
                                                continue loop2;
                                             }
                                             continue loop1;
                                          }
                                       }
                                       §§goto(addr215);
                                    }
                                    §§goto(addr217);
                                 }
                                 §§goto(addr186);
                              }
                              break;
                           }
                        }
                        §§pop().close();
                        §§goto(addr252);
                     }
                  }
               }
               if(!(_loc3_ || _loc2_))
               {
                  continue;
               }
               §§push(§§pop().§-!$§);
               if(_loc3_)
               {
                  §§push(Quest.§9!h§);
                  if(_loc3_)
                  {
                     §§goto(addr57);
                  }
                  §§goto(addr259);
               }
               §§goto(addr257);
            }
         }
         §§goto(addr262);
      }
      
      private function §%$§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         var _loc1_:XML = §^"8§.§@!k§;
         if(_loc6_)
         {
            §2y§.§2=§.§ "5§();
            loop0:
            while(true)
            {
               if(!_loc1_)
               {
                  this.§=j§ = true;
                  break;
               }
               while(true)
               {
                  this.§=j§ = false;
                  continue loop0;
               }
            }
            while(true)
            {
               if(_loc6_)
               {
                  this.§'r§ = Quest.§+!#§(this.§6!^§.§8#§.§4+§);
                  §§goto(addr268);
               }
               §§goto(addr284);
               §§goto(addr235);
            }
            §§goto(addr242);
         }
         while(true)
         {
            this.§'r§ = new Quest(this.§6!^§.§8#§.§4+§);
            §§goto(addr144);
         }
      }
      
      private function onPhysicsEnabled(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§'r§.onPhysicsEnabled();
         }
         do
         {
            this.§6!^§.§>k§.goToCastleView();
         }
         while(_loc2_ && this);
         
      }
      
      private function §0!h§(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§6!^§.§>k§.§!"1§(this.§'r§.§2"0§());
         }
      }
      
      public function §1!?§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§8!-§ == Quest.§1! §);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function §-!Q§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§'r§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     addr51:
                     §§push(true);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr55:
                     return this.§'r§.§0" §;
                  }
                  return §§pop();
               }
            }
            §§goto(addr55);
         }
         §§goto(addr51);
      }
      
      public function §"";§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§'r§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§push(true);
                     if(_loc1_ || _loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr64:
                     return this.§'r§.§0" §;
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr64);
      }
      
      public function §3l§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§'r§ == null);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
   }
}
