package §2v§
{
   import §"§.§%!$§;
   import §'!D§.§0j§;
   import §'!D§.§?!h§;
   import §5G§.§?,§;
   import §>!1§.§1!+§;
   import §>M§.§'V§;
   import §>M§.§<6§;
   import §>M§.§^-§;
   import §>M§.§true §;
   import §>P§.§5!§;
   import §[h§.§4I§;
   import §`h§.§@!Z§;
   import flash.display.MovieClip;
   
   public class §&O§ implements §true §
   {
      
      public static const ERROR:String = "error";
      
      public static const §3!T§:String = "quit";
      
      public static const RESTART_LEVEL:String = "leave_level";
      
      public static const §"!?§:String = "use_credit";
      
      public static const §3^§:String = "use_credit_cheetos";
      
      public static const NO_CREDIT:String = "no_credit";
      
      public static const SESSION_EXPIRED:String = "session_expired";
      
      public static const PRACTICE_1_2_COMPLETE:String = "practice1_2_complete";
      
      public static const PRACTICE_3_COMPLETE:String = "practice3_complete";
      
      public static const §5!_§:String = "thanks";
      
      public static const CONFIRM_LEAVE:String = "confirm_leave";
      
      private static var §4!M§:Array;
      
      private static var §6!c§:Array;
      
      private static const §in §:String = "DarkBg";
      
      private static var §>K§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §&O§))
         {
            ERROR = "error";
            loop0:
            while(true)
            {
               §3!T§ = "quit";
               loop1:
               while(true)
               {
                  RESTART_LEVEL = "leave_level";
                  loop2:
                  while(true)
                  {
                     §"!?§ = "use_credit";
                     while(true)
                     {
                        §3^§ = "use_credit_cheetos";
                        addr72:
                        if(!(_loc2_ || §&O§))
                        {
                           continue;
                        }
                        §>K§ = false;
                        addr79:
                        if(!(_loc2_ || §&O§))
                        {
                           loop13:
                           while(true)
                           {
                              if(!(_loc1_ && _loc1_))
                              {
                                 addr56:
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    addr63:
                                    if(_loc2_ || §&O§)
                                    {
                                       if(_loc1_)
                                       {
                                          break;
                                       }
                                       §§goto(addr72);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          PRACTICE_3_COMPLETE = "practice3_complete";
                                          §§goto(addr63);
                                       }
                                       addr158:
                                    }
                                 }
                                 while(!_loc1_)
                                 {
                                    §5!_§ = "thanks";
                                    §§goto(addr56);
                                 }
                                 while(true)
                                 {
                                    PRACTICE_1_2_COMPLETE = "practice1_2_complete";
                                    §§goto(addr158);
                                 }
                                 addr163:
                              }
                              else
                              {
                                 addr87:
                                 while(true)
                                 {
                                    if(!(_loc1_ && §&O§))
                                    {
                                       addr104:
                                       if(_loc1_ && _loc1_)
                                       {
                                          break;
                                       }
                                       §in § = "DarkBg";
                                    }
                                    continue loop13;
                                 }
                                 while(true)
                                 {
                                    NO_CREDIT = "no_credit";
                                    break loop13;
                                    §§goto(addr104);
                                 }
                                 addr87:
                                 addr180:
                              }
                              while(true)
                              {
                                 CONFIRM_LEAVE = "confirm_leave";
                                 addr139:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       §4!M§ = [ERROR,§3!T§,RESTART_LEVEL,NO_CREDIT,§"!?§,§3^§,SESSION_EXPIRED,PRACTICE_1_2_COMPLETE,PRACTICE_3_COMPLETE,§5!_§,CONFIRM_LEAVE];
                                       continue loop1;
                                    }
                                    continue loop0;
                                 }
                                 continue loop1;
                                 §§goto(addr87);
                              }
                           }
                           continue loop2;
                        }
                        if(_loc1_)
                        {
                           continue loop1;
                        }
                        if(!_loc1_)
                        {
                           return;
                        }
                        §§goto(addr139);
                     }
                  }
               }
            }
         }
         §§goto(addr180);
      }
      
      private var §'%§:String;
      
      private var §1A§:§<6§;
      
      public function §&O§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function get §2!,§() : Boolean
      {
         return §>K§;
      }
      
      public function set container(param1:§<6§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§1A§ = param1;
         }
      }
      
      public function get container() : §<6§
      {
         return this.§1A§;
      }
      
      public function §3,§(param1:XML, param2:§<6§, param3:§5!§, param4:§%!$§, param5:MovieClip = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.container = new §1!+§(param1,param2,param3,param4 as §?,§,param5);
         }
         do
         {
            §>K§ = false;
         }
         while(!(_loc7_ || this));
         
      }
      
      public function deActivate() : void
      {
      }
      
      public function showPopup(param1:String, param2:String = null) : Boolean
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:§<6§ = null;
         var _loc5_:§0j§ = null;
         var _loc6_:§?!h§ = null;
         var _loc7_:§^-§ = null;
         if(!(_loc11_ && param1))
         {
            if(this.container != null)
            {
               loop0:
               while(true)
               {
                  §§push(§5!9§.§-!O§);
                  loop1:
                  while(true)
                  {
                     §§push(§§pop().§8!&§);
                     while(_loc10_)
                     {
                        §§push(Boolean(§§pop()));
                        loop3:
                        while(true)
                        {
                           §§push(§§pop());
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr171:
                                    while(true)
                                    {
                                       §§push(§6!c§.indexOf(param1) > -1);
                                    }
                                 }
                                 addr170:
                              }
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§5!9§.§-!O§);
                                          if(!(_loc10_ || _loc3_))
                                          {
                                             break;
                                          }
                                          §§push(§§pop().§+!1§);
                                          loop9:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc10_ || _loc3_)
                                             {
                                                if(_loc11_)
                                                {
                                                   continue loop3;
                                                }
                                                if(!_loc10_)
                                                {
                                                   continue loop7;
                                                }
                                                if(!_loc11_)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc10_ || this))
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      loop10:
                                                      while(§§pop())
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            if(!(_loc10_ || _loc3_))
                                                            {
                                                               §§push(false);
                                                            }
                                                            else
                                                            {
                                                               addr176:
                                                            }
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         if(_loc10_ || _loc3_)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               §§push(false);
                                                               while(_loc11_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                  }
                                                                  §§push(param1 == §&O§.§3^§);
                                                                  if(!(_loc11_ && param2))
                                                                  {
                                                                     continue loop9;
                                                                     continue loop10;
                                                                  }
                                                               }
                                                               return §§pop();
                                                            }
                                                            continue loop0;
                                                         }
                                                         while(!(_loc11_ && _loc3_))
                                                         {
                                                            if(!(_loc10_ || param1))
                                                            {
                                                               addr142:
                                                               if(_loc11_)
                                                               {
                                                                  break loop9;
                                                               }
                                                               §§push(false);
                                                               continue loop3;
                                                            }
                                                            §§goto(addr133);
                                                         }
                                                         continue loop8;
                                                      }
                                                      var _loc8_:* = 0;
                                                      var _loc9_:* = §4!M§;
                                                      addr209:
                                                      for each(_loc3_ in _loc9_)
                                                      {
                                                         if(_loc6_ = this.container.getItemByName(_loc3_))
                                                         {
                                                            if(_loc10_ || this)
                                                            {
                                                               _loc6_.setVisibility(false);
                                                            }
                                                         }
                                                         §§goto(addr209);
                                                      }
                                                      if(!_loc11_)
                                                      {
                                                         addr262:
                                                         this.container.getItemByName(param1).setVisibility(true);
                                                      }
                                                      addr236:
                                                      addr263:
                                                      §§push(this.container);
                                                      if(!_loc11_)
                                                      {
                                                         §§push(§in §);
                                                         if(_loc10_)
                                                         {
                                                            §§push(§§pop().getItemByName(§§pop()));
                                                            if(!_loc11_)
                                                            {
                                                               §§push(true);
                                                               if(!(_loc11_ && param2))
                                                               {
                                                                  §§pop().setVisibility(§§pop());
                                                                  this.§'%§ = param1;
                                                                  if(!(_loc11_ && param1))
                                                                  {
                                                                     if(_loc10_ || param2)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr236);
                                                                        }
                                                                        _loc4_ = null;
                                                                        _loc5_ = null;
                                                                        if(!(_loc11_ && this))
                                                                        {
                                                                           _loc8_ = param1;
                                                                           if(!(_loc11_ && this))
                                                                           {
                                                                              §§push(§3!T§);
                                                                              if(_loc10_)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc11_ && param2)
                                                                                          {
                                                                                             addr911:
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr1066:
                                                                                          §§push(9);
                                                                                          if(!(_loc11_ && param2))
                                                                                          {
                                                                                             addr1074:
                                                                                          }
                                                                                       }
                                                                                       addr1079:
                                                                                       switch(§§pop())
                                                                                       {
                                                                                          case 0:
                                                                                             §§push(this.container);
                                                                                             if(!(_loc11_ && this))
                                                                                             {
                                                                                                §§push(param1);
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   §§push(§§pop().getItemByName(§§pop()));
                                                                                                   if(!(_loc11_ && this))
                                                                                                   {
                                                                                                      §§push((§§pop() as §<6§).getItemByName("TextField_Description"));
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         addr305:
                                                                                                         (§§pop() as §'V§).§2!%§.htmlText = §4I§.getText("Popup_Leave_Level_Text");
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            addr317:
                                                                                                            §§push(this.container.getItemByName(param1));
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               §§push((§§pop() as §<6§).getItemByName("MovieClip_CheckBox"));
                                                                                                            }
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push((_loc4_ = §§pop() as §<6§).getItemByName("TextField_CheckBox"));
                                                                                                      if(!(_loc11_ && param2))
                                                                                                      {
                                                                                                         (§§pop() as §'V§).§2!%§.htmlText = §4I§.getText("Popup_CheckBox_Use_Credits");
                                                                                                         §§push(_loc4_.getItemByName("Checkbox_RememberMe"));
                                                                                                      }
                                                                                                      _loc5_ = §§pop() as §0j§;
                                                                                                      if(_loc10_ || param1)
                                                                                                      {
                                                                                                         §§push(§5!9§.§-!O§.§8!&§);
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  _loc5_.setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     addr360:
                                                                                                                     break;
                                                                                                                     addr429:
                                                                                                                     addr400:
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               _loc5_.setComponentState(§0j§.§+o§);
                                                                                                               if(!(_loc11_ && param2))
                                                                                                               {
                                                                                                                  §§goto(addr360);
                                                                                                               }
                                                                                                               addr1095:
                                                                                                               §>K§ = true;
                                                                                                            }
                                                                                                            addr1098:
                                                                                                            return true;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr429);
                                                                                                   }
                                                                                                   §§goto(addr305);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr317);
                                                                                          case 1:
                                                                                             §§push(this.container);
                                                                                             if(!(_loc11_ && this))
                                                                                             {
                                                                                                §§push(param1);
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§push(§§pop().getItemByName(§§pop()));
                                                                                                   if(!(_loc11_ && param2))
                                                                                                   {
                                                                                                      §§push((§§pop() as §<6§).getItemByName("TextField_Description"));
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         (§§pop() as §'V§).§2!%§.htmlText = §4I§.getText("Popup_Use_Credit_Text");
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr400);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr433:
                                                                                                               §§push(this.container.getItemByName(param1));
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  addr440:
                                                                                                                  §§push((_loc4_ = (§§pop() as §<6§).getItemByName("MovieClip_CheckBox") as §<6§).getItemByName("TextField_CheckBox"));
                                                                                                                  if(!(_loc11_ && this))
                                                                                                                  {
                                                                                                                     (§§pop() as §'V§).§2!%§.htmlText = §4I§.getText("Popup_CheckBox_Use_Credits");
                                                                                                                     §§push(_loc4_.getItemByName("Checkbox_RememberMe"));
                                                                                                                  }
                                                                                                                  _loc5_ = §§pop() as §0j§;
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     if(!§5!9§.§-!O§.§8!&§)
                                                                                                                     {
                                                                                                                        _loc5_.setComponentState(§0j§.§+o§);
                                                                                                                        addr523:
                                                                                                                        if(_loc10_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              addr537:
                                                                                                                              _loc5_.setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                              addr541:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr532:
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§goto(addr541);
                                                                                                                     }
                                                                                                                     §§goto(addr537);
                                                                                                                  }
                                                                                                                  §§goto(addr532);
                                                                                                               }
                                                                                                               §§goto(addr440);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1095);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr440);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr433);
                                                                                          case 2:
                                                                                             §§push(this.container);
                                                                                             if(_loc10_ || param2)
                                                                                             {
                                                                                                §§push(param1);
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§push(§§pop().getItemByName(§§pop()));
                                                                                                   if(_loc10_ || param1)
                                                                                                   {
                                                                                                      §§push((§§pop() as §<6§).getItemByName("TextField_Description"));
                                                                                                      if(!(_loc11_ && param2))
                                                                                                      {
                                                                                                         addr505:
                                                                                                         (§§pop() as §'V§).§2!%§.htmlText = §4I§.getText("Popup_Use_Credit_Cheetos_Text");
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            if(true)
                                                                                                            {
                                                                                                               addr555:
                                                                                                               §§push(this.container.getItemByName(param1));
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  addr562:
                                                                                                                  §§push((_loc4_ = (§§pop() as §<6§).getItemByName("MovieClip_CheckBox") as §<6§).getItemByName("TextField_CheckBox"));
                                                                                                                  if(_loc10_ || param1)
                                                                                                                  {
                                                                                                                     (§§pop() as §'V§).§2!%§.htmlText = §4I§.getText("Popup_CheckBox_Use_Cheetos_Bag");
                                                                                                                     §§push(_loc4_.getItemByName("Checkbox_RememberMe"));
                                                                                                                  }
                                                                                                                  _loc5_ = §§pop() as §0j§;
                                                                                                                  if(!(_loc11_ && this))
                                                                                                                  {
                                                                                                                     if(!§5!9§.§-!O§.§+!1§)
                                                                                                                     {
                                                                                                                        _loc5_.setComponentState(§0j§.§+o§);
                                                                                                                        addr650:
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           addr668:
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     if(!(_loc11_ && this))
                                                                                                                     {
                                                                                                                        _loc5_.setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr668);
                                                                                                               }
                                                                                                               §§goto(addr562);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr523);
                                                                                                         }
                                                                                                         §§goto(addr537);
                                                                                                      }
                                                                                                      §§goto(addr562);
                                                                                                   }
                                                                                                   §§goto(addr505);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr555);
                                                                                          case 3:
                                                                                             §§push(this.container);
                                                                                             if(_loc10_ || _loc3_)
                                                                                             {
                                                                                                §§push(param1);
                                                                                                if(!(_loc11_ && _loc3_))
                                                                                                {
                                                                                                   §§push(§§pop().getItemByName(§§pop()));
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      §§push((§§pop() as §<6§).getItemByName("TextField_Description"));
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         (§§pop() as §'V§).§2!%§.htmlText = §4I§.getText("Popup_Use_Credit_Text");
                                                                                                         if(_loc10_ || _loc3_)
                                                                                                         {
                                                                                                            if(true)
                                                                                                            {
                                                                                                               addr672:
                                                                                                               §§push(this.container.getItemByName(param1));
                                                                                                               if(_loc10_ || this)
                                                                                                               {
                                                                                                                  addr684:
                                                                                                                  §§push((_loc4_ = (§§pop() as §<6§).getItemByName("MovieClip_CheckBox") as §<6§).getItemByName("TextField_CheckBox"));
                                                                                                                  if(_loc10_ || _loc3_)
                                                                                                                  {
                                                                                                                     (§§pop() as §'V§).§2!%§.htmlText = §4I§.getText("Popup_CheckBox_Use_Credits");
                                                                                                                     §§push(_loc4_.getItemByName("Checkbox_RememberMe"));
                                                                                                                  }
                                                                                                                  _loc5_ = §§pop() as §0j§;
                                                                                                                  if(!_loc11_)
                                                                                                                  {
                                                                                                                     if(§5!9§.§-!O§.§8!&§)
                                                                                                                     {
                                                                                                                        if(!(_loc11_ && param1))
                                                                                                                        {
                                                                                                                           _loc5_.setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                        }
                                                                                                                        addr814:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        _loc5_.setComponentState(§0j§.§+o§);
                                                                                                                        addr798:
                                                                                                                     }
                                                                                                                     addr754:
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  break;
                                                                                                                  addr790:
                                                                                                               }
                                                                                                               §§goto(addr684);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr650);
                                                                                                         }
                                                                                                         §§goto(addr668);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr684);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr672);
                                                                                          case 4:
                                                                                             §§push(this.container);
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                addr762:
                                                                                                §§push(§§pop().getItemByName(param1));
                                                                                                if(!(_loc11_ && param2))
                                                                                                {
                                                                                                   §§push((§§pop() as §<6§).getItemByName("TextField_Description"));
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      (§§pop() as §'V§).§2!%§.htmlText = §4I§.getText("Popup_Confirm_Leave");
                                                                                                      addr783:
                                                                                                      if(_loc10_ || _loc3_)
                                                                                                      {
                                                                                                         §§goto(addr790);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr814);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr817:
                                                                                                §§push(§§pop().getItemByName(param1));
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   addr821:
                                                                                                   §§push((§§pop() as §<6§).getItemByName("Button_RedeemCredit"));
                                                                                                }
                                                                                             }
                                                                                             addr825:
                                                                                             _loc7_ = §§pop() as §^-§;
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             addr859:
                                                                                             break;
                                                                                          case 5:
                                                                                             §§push(this.container);
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                §§push(param1);
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      §§push(§§pop().getItemByName(§§pop()));
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         §§push((§§pop() as §<6§).getItemByName("TextField_Description"));
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            addr736:
                                                                                                            (§§pop() as §'V§).§2!%§.htmlText = §4I§.getText("Popup_No_Credit_Text");
                                                                                                            if(!(_loc11_ && param2))
                                                                                                            {
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  if(true)
                                                                                                                  {
                                                                                                                     §§goto(addr817);
                                                                                                                     §§push(this.container);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr798);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr783);
                                                                                                            }
                                                                                                            §§goto(addr754);
                                                                                                         }
                                                                                                         §§goto(addr821);
                                                                                                      }
                                                                                                      §§goto(addr736);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr762);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr817);
                                                                                          case 6:
                                                                                             break;
                                                                                          case 7:
                                                                                             break;
                                                                                          case 8:
                                                                                             break;
                                                                                          case 9:
                                                                                             §§push(this.container.getItemByName(param1));
                                                                                             if(_loc10_ || _loc3_)
                                                                                             {
                                                                                                §§push((§§pop() as §<6§).getItemByName("TextField_Description"));
                                                                                             }
                                                                                             (§§pop() as §'V§).§2!%§.htmlText = param2;
                                                                                             §§goto(addr859);
                                                                                       }
                                                                                       §@!Z§.§@0§();
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          §§goto(addr1095);
                                                                                       }
                                                                                       §§goto(addr1098);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(§"!?§);
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          §§push(_loc8_);
                                                                                          if(_loc10_ || param1)
                                                                                          {
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   §§push(1);
                                                                                                   if(!(_loc11_ && param1))
                                                                                                   {
                                                                                                      §§goto(addr911);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr998:
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr944:
                                                                                                   §§push(3);
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      addr947:
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(§3^§);
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   §§push(_loc8_);
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      if(§§pop() === §§pop())
                                                                                                      {
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            §§push(2);
                                                                                                            if(_loc10_ || this)
                                                                                                            {
                                                                                                               §§goto(addr1079);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr947);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr944);
                                                                                                         }
                                                                                                         §§goto(addr1079);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(RESTART_LEVEL);
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            addr933:
                                                                                                            §§push(_loc8_);
                                                                                                            if(_loc10_ || param2)
                                                                                                            {
                                                                                                               addr941:
                                                                                                               if(§§pop() === §§pop())
                                                                                                               {
                                                                                                                  if(!_loc11_)
                                                                                                                  {
                                                                                                                     §§goto(addr944);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr1059:
                                                                                                                     §§push(8);
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        addr1062:
                                                                                                                        §§goto(addr1079);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr1074);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1079);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(CONFIRM_LEAVE);
                                                                                                                  if(!(_loc11_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr956:
                                                                                                                     §§push(_loc8_);
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        if(§§pop() === §§pop())
                                                                                                                        {
                                                                                                                           if(!(_loc11_ && param1))
                                                                                                                           {
                                                                                                                              §§push(4);
                                                                                                                              if(_loc11_)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              §§goto(addr1079);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr1059);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(NO_CREDIT);
                                                                                                                           if(!(_loc11_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(_loc8_);
                                                                                                                              if(!_loc11_)
                                                                                                                              {
                                                                                                                                 if(§§pop() === §§pop())
                                                                                                                                 {
                                                                                                                                    if(!(_loc11_ && param2))
                                                                                                                                    {
                                                                                                                                       addr990:
                                                                                                                                       §§push(5);
                                                                                                                                       if(_loc10_ || param1)
                                                                                                                                       {
                                                                                                                                          §§goto(addr998);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr1021:
                                                                                                                                          §§goto(addr1079);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr1041:
                                                                                                                                       §§push(7);
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       §§goto(addr1079);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1079);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(PRACTICE_1_2_COMPLETE);
                                                                                                                                    if(!_loc11_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc8_);
                                                                                                                                       if(!_loc11_)
                                                                                                                                       {
                                                                                                                                          addr1005:
                                                                                                                                          if(§§pop() === §§pop())
                                                                                                                                          {
                                                                                                                                             if(!(_loc11_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(6);
                                                                                                                                                if(_loc10_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1021);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1062);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr1066);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(PRACTICE_3_COMPLETE);
                                                                                                                                             if(_loc10_ || _loc3_)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             addr1053:
                                                                                                                                             §§push(_loc8_);
                                                                                                                                             if(!_loc11_)
                                                                                                                                             {
                                                                                                                                                addr1056:
                                                                                                                                                if(§§pop() === §§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc10_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1059);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1066);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr1064:
                                                                                                                                                   §§push(ERROR);
                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1066);
                                                                                                                                             }
                                                                                                                                             if(§§pop() === §§pop())
                                                                                                                                             {
                                                                                                                                                §§goto(addr1066);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr1079);
                                                                                                                                                §§push(10);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1079);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1056);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1053);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1005);
                                                                                                                           }
                                                                                                                           §§push(_loc8_);
                                                                                                                           if(_loc10_ || this)
                                                                                                                           {
                                                                                                                              if(§§pop() === §§pop())
                                                                                                                              {
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1041);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr1059);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(§5!_§);
                                                                                                                                 if(_loc10_ || param2)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1053);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1064);
                                                                                                                              }
                                                                                                                              §§goto(addr1079);
                                                                                                                           }
                                                                                                                           §§goto(addr1053);
                                                                                                                        }
                                                                                                                        §§goto(addr1079);
                                                                                                                     }
                                                                                                                     §§goto(addr1056);
                                                                                                                  }
                                                                                                                  §§goto(addr1064);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1056);
                                                                                                         }
                                                                                                         §§goto(addr1053);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1056);
                                                                                                }
                                                                                                §§goto(addr956);
                                                                                             }
                                                                                             §§goto(addr1079);
                                                                                          }
                                                                                          §§goto(addr1005);
                                                                                       }
                                                                                       §§goto(addr933);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr941);
                                                                              }
                                                                              §§goto(addr933);
                                                                           }
                                                                           §§goto(addr990);
                                                                        }
                                                                        §§goto(addr1079);
                                                                     }
                                                                     §§goto(addr263);
                                                                  }
                                                                  addr256:
                                                                  §§goto(addr256);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr262);
                                                      addr58:
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr170);
                                                }
                                             }
                                             §§goto(addr118);
                                          }
                                          §§goto(addr171);
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr142);
                                 }
                              }
                           }
                        }
                     }
                     return §§pop();
                  }
               }
            }
            §§goto(addr176);
         }
         §§goto(addr171);
      }
      
      public function hidePopup() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:String = null;
         var _loc2_:§?!h§ = null;
         if(!_loc5_)
         {
            if(this.§'%§)
            {
               if(!(_loc5_ && _loc1_))
               {
                  if(this.container)
                  {
                     addr38:
                     var _loc3_:int = 0;
                     for each(_loc1_ in §4!M§)
                     {
                        _loc2_ = this.container.getItemByName(_loc1_);
                        if(!_loc5_)
                        {
                           if(!_loc2_)
                           {
                              continue;
                           }
                           if(!(_loc6_ || this))
                           {
                              continue;
                           }
                        }
                        _loc2_.setVisibility(false);
                     }
                     if(_loc6_)
                     {
                        §§goto(addr125);
                     }
                     §§goto(addr124);
                  }
               }
               §§goto(addr38);
            }
            addr125:
            this.container.getItemByName(§in §).setVisibility(false);
            loop0:
            do
            {
               if(§!L§.§2!,§ == false)
               {
                  if(!_loc5_)
                  {
                     §@!Z§.§,R§();
                     addr124:
                     loop1:
                     while(true)
                     {
                        addr91:
                        while(true)
                        {
                           §>K§ = false;
                           if(_loc6_ || _loc3_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                     addr124:
                  }
                  §§goto(addr124);
               }
               §§goto(addr91);
            }
            while(!_loc6_);
            
            return;
         }
         §§goto(addr38);
      }
      
      public function getCurrentPopupName() : String
      {
         return this.§'%§;
      }
   }
}
