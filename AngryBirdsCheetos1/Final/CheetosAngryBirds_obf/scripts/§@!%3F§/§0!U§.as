package §@!?§
{
   import §!y§.§-!L§;
   import §%w§.§;s§;
   import §'!3§.§4C§;
   import §,j§.§0!@§;
   import §,j§.§1-§;
   import §,j§.§[i§;
   import §,j§.§^^§;
   import §-H§.§&c§;
   import §0F§.§'j§;
   import §1§.§&!3§;
   import §1§.§;d§;
   import §?m§.§7?§;
   import flash.display.MovieClip;
   
   public class §0!U§ implements §^^§
   {
      
      public static const ERROR:String = "error";
      
      public static const §]k§:String = "quit";
      
      public static const §%!'§:String = "win_spot";
      
      public static const SPOT_PRIZE_AVAILABLE:String = "spotprize_available";
      
      public static const RESTART_LEVEL:String = "leave_level";
      
      public static const §`1§:String = "use_credit";
      
      public static const §6!5§:String = "use_credit_cheetos";
      
      public static const NO_CREDIT:String = "no_credit";
      
      public static const §"!R§:String = "session_expired";
      
      public static const PRACTICE_1_2_COMPLETE:String = "practice1_2_complete";
      
      public static const PRACTICE_3_COMPLETE:String = "practice3_complete";
      
      public static const §6U§:String = "thanks";
      
      public static const CONFIRM_LEAVE:String = "confirm_leave";
      
      private static var §;B§:Array;
      
      private static var §`y§:Array;
      
      private static const §[=§:String = "DarkBg";
      
      private static var §3r§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            ERROR = "error";
            while(true)
            {
               §]k§ = "quit";
               while(true)
               {
                  §%!'§ = "win_spot";
                  loop2:
                  while(true)
                  {
                     SPOT_PRIZE_AVAILABLE = "spotprize_available";
                     addr200:
                     while(true)
                     {
                        RESTART_LEVEL = "leave_level";
                        continue loop2;
                     }
                  }
               }
               while(!(_loc2_ && _loc2_))
               {
                  while(true)
                  {
                     §6!5§ = "use_credit_cheetos";
                     §§goto(addr167);
                  }
               }
            }
         }
         §§goto(addr181);
      }
      
      private var §"!-§:String;
      
      private var §]!?§:§1-§;
      
      public function §0!U§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function get §84§() : Boolean
      {
         return §3r§;
      }
      
      public function set container(param1:§1-§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§]!?§ = param1;
         }
      }
      
      public function get container() : §1-§
      {
         return this.§]!?§;
      }
      
      public function §3S§(param1:XML, param2:§1-§, param3:§'j§, param4:§&c§, param5:MovieClip = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.container = new §-!L§(param1,param2,param3,param4 as §;s§,param5);
         }
      }
      
      public function deActivate() : void
      {
      }
      
      public function showPopup(param1:String, param2:String = null) : Boolean
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:§1-§ = null;
         var _loc5_:§&!3§ = null;
         var _loc6_:§;d§ = null;
         var _loc7_:§0!@§ = null;
         if(_loc11_)
         {
            if(this.container != null)
            {
               loop0:
               while(true)
               {
                  §§push(§#x§.§=!!§);
                  loop1:
                  while(true)
                  {
                     §§push(§§pop().§9!E§);
                     loop2:
                     while(true)
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
                                    addr157:
                                    while(true)
                                    {
                                       §§push(§`y§.indexOf(param1) > -1);
                                    }
                                 }
                                 addr156:
                              }
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc11_)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             if(!_loc11_)
                                             {
                                                §§push(false);
                                                addr61:
                                             }
                                             else
                                             {
                                                addr162:
                                             }
                                             loop10:
                                             while(true)
                                             {
                                                §§push(§#x§.§=!!§);
                                                if(!_loc11_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop().§]s§);
                                                if(!(_loc10_ && param2))
                                                {
                                                   if(_loc10_ && param1)
                                                   {
                                                      §§goto(addr145);
                                                   }
                                                   if(!_loc11_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(!(_loc11_ || this))
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(_loc10_)
                                                   {
                                                      break loop9;
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                   if(!_loc10_)
                                                   {
                                                      addr95:
                                                      if(!(_loc10_ && param2))
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc10_ && this)
                                                         {
                                                            continue loop4;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(false);
                                                                     while(true)
                                                                     {
                                                                        if(!_loc11_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              continue loop9;
                                                                           }
                                                                           addr111:
                                                                        }
                                                                        return §§pop();
                                                                     }
                                                                     addr49:
                                                                  }
                                                                  else
                                                                  {
                                                                     if(_loc10_ && _loc3_)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     if(false)
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                  }
                                                               }
                                                               addr165:
                                                               var _loc8_:* = 0;
                                                               var _loc9_:* = §;B§;
                                                               addr190:
                                                               for each(_loc3_ in _loc9_)
                                                               {
                                                                  if(_loc6_ = this.container.getItemByName(_loc3_))
                                                                  {
                                                                     if(_loc11_)
                                                                     {
                                                                        _loc6_.setVisibility(false);
                                                                     }
                                                                  }
                                                                  §§goto(addr190);
                                                               }
                                                               if(_loc11_)
                                                               {
                                                                  addr238:
                                                                  this.container.getItemByName(param1).setVisibility(true);
                                                                  addr210:
                                                                  addr239:
                                                                  addr237:
                                                                  addr236:
                                                                  §§push(this.container);
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(§[=§);
                                                                     if(_loc11_)
                                                                     {
                                                                        §§push(§§pop().getItemByName(§§pop()));
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(true);
                                                                           if(!(_loc10_ && param2))
                                                                           {
                                                                              §§pop().setVisibility(§§pop());
                                                                              addr230:
                                                                              if(!_loc10_)
                                                                              {
                                                                                 this.§"!-§ = param1;
                                                                                 if(_loc11_ || _loc3_)
                                                                                 {
                                                                                    addr208:
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr210);
                                                                                    }
                                                                                    _loc4_ = null;
                                                                                    _loc5_ = null;
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       _loc8_ = param1;
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          §§push(§]k§);
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             §§push(_loc8_);
                                                                                             if(_loc11_ || this)
                                                                                             {
                                                                                                if(§§pop() === §§pop())
                                                                                                {
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         addr1120:
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr1043:
                                                                                                      §§push(3);
                                                                                                      if(_loc10_ && _loc3_)
                                                                                                      {
                                                                                                         addr1174:
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(§`1§);
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      §§push(_loc8_);
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         if(§§pop() === §§pop())
                                                                                                         {
                                                                                                            if(!(_loc10_ && param1))
                                                                                                            {
                                                                                                               §§push(1);
                                                                                                               if(_loc11_ || param2)
                                                                                                               {
                                                                                                                  addr1214:
                                                                                                                  switch(§§pop())
                                                                                                                  {
                                                                                                                     case 0:
                                                                                                                        §§push(this.container);
                                                                                                                        if(!(_loc10_ && this))
                                                                                                                        {
                                                                                                                           §§push(param1);
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().getItemByName(§§pop()));
                                                                                                                              if(!(_loc10_ && param1))
                                                                                                                              {
                                                                                                                                 §§push((§§pop() as §1-§).getItemByName("TextField_Description"));
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    addr276:
                                                                                                                                    (§§pop() as §[i§).§7t§.htmlText = §4C§.getText("Popup_Leave_Level_Text");
                                                                                                                                    if(_loc11_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       addr293:
                                                                                                                                       §§push(this.container.getItemByName(param1));
                                                                                                                                       if(!(_loc10_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push((§§pop() as §1-§).getItemByName("MovieClip_CheckBox"));
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push((_loc4_ = §§pop() as §1-§).getItemByName("TextField_CheckBox"));
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    (§§pop() as §[i§).§7t§.htmlText = §4C§.getText("Popup_CheckBox_Use_Credits");
                                                                                                                                    §§push(_loc4_.getItemByName("Checkbox_RememberMe"));
                                                                                                                                 }
                                                                                                                                 _loc5_ = §§pop() as §&!3§;
                                                                                                                                 if(!(_loc10_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(§#x§.§=!!§.§9!E§);
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc11_ || this)
                                                                                                                                          {
                                                                                                                                             addr406:
                                                                                                                                             _loc5_.setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                                             addr336:
                                                                                                                                             break;
                                                                                                                                             addr410:
                                                                                                                                             addr378:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          _loc5_.setComponentState(§&!3§.§;2§);
                                                                                                                                          if(_loc11_ || param2)
                                                                                                                                          {
                                                                                                                                             §§goto(addr336);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr1238:
                                                                                                                                       return true;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr406);
                                                                                                                              }
                                                                                                                              §§goto(addr276);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr293);
                                                                                                                     case 1:
                                                                                                                        §§push(this.container);
                                                                                                                        if(!(_loc10_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(param1);
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().getItemByName(§§pop()));
                                                                                                                              if(!(_loc10_ && this))
                                                                                                                              {
                                                                                                                                 §§push((§§pop() as §1-§).getItemByName("TextField_Description"));
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    (§§pop() as §[i§).§7t§.htmlText = §4C§.getText("Popup_Use_Credit_Text");
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          if(true)
                                                                                                                                          {
                                                                                                                                             addr414:
                                                                                                                                             §§push(this.container.getItemByName(param1));
                                                                                                                                             if(!(_loc10_ && param1))
                                                                                                                                             {
                                                                                                                                                addr422:
                                                                                                                                                §§push((§§pop() as §1-§).getItemByName("MovieClip_CheckBox"));
                                                                                                                                             }
                                                                                                                                             §§push((_loc4_ = §§pop() as §1-§).getItemByName("TextField_CheckBox"));
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                (§§pop() as §[i§).§7t§.htmlText = §4C§.getText("Popup_CheckBox_Use_Credits");
                                                                                                                                                §§push(_loc4_.getItemByName("Checkbox_RememberMe"));
                                                                                                                                             }
                                                                                                                                             _loc5_ = §§pop() as §&!3§;
                                                                                                                                             if(!(_loc10_ && param2))
                                                                                                                                             {
                                                                                                                                                if(§#x§.§=!!§.§9!E§)
                                                                                                                                                {
                                                                                                                                                   if(!_loc10_)
                                                                                                                                                   {
                                                                                                                                                      _loc5_.setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                                                   }
                                                                                                                                                   addr522:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   _loc5_.setComponentState(§&!3§.§;2§);
                                                                                                                                                   addr511:
                                                                                                                                                }
                                                                                                                                                addr457:
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr511);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr410);
                                                                                                                                       }
                                                                                                                                       §§goto(addr378);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1238);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr422);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr414);
                                                                                                                     case 2:
                                                                                                                        §§push(this.container);
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           §§push(param1);
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().getItemByName(§§pop()));
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 §§push((§§pop() as §1-§).getItemByName("TextField_Description"));
                                                                                                                                 if(_loc11_ || param1)
                                                                                                                                 {
                                                                                                                                    addr481:
                                                                                                                                    (§§pop() as §[i§).§7t§.htmlText = §4C§.getText("Popup_Use_Credit_Cheetos_Text");
                                                                                                                                    if(_loc11_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(_loc11_ || param2)
                                                                                                                                       {
                                                                                                                                          if(true)
                                                                                                                                          {
                                                                                                                                             addr526:
                                                                                                                                             §§push(this.container.getItemByName(param1));
                                                                                                                                             if(_loc11_)
                                                                                                                                             {
                                                                                                                                                addr529:
                                                                                                                                                §§push((§§pop() as §1-§).getItemByName("MovieClip_CheckBox"));
                                                                                                                                             }
                                                                                                                                             §§push((_loc4_ = §§pop() as §1-§).getItemByName("TextField_CheckBox"));
                                                                                                                                             if(!(_loc10_ && param2))
                                                                                                                                             {
                                                                                                                                                (§§pop() as §[i§).§7t§.htmlText = §4C§.getText("Popup_CheckBox_Use_Cheetos_Bag");
                                                                                                                                                §§push(_loc4_.getItemByName("Checkbox_RememberMe"));
                                                                                                                                             }
                                                                                                                                             _loc5_ = §§pop() as §&!3§;
                                                                                                                                             if(!(_loc10_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                if(!§#x§.§=!!§.§]s§)
                                                                                                                                                {
                                                                                                                                                   _loc5_.setComponentState(§&!3§.§;2§);
                                                                                                                                                   addr633:
                                                                                                                                                   if(_loc10_ && param2)
                                                                                                                                                   {
                                                                                                                                                      addr645:
                                                                                                                                                      _loc5_.setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                                                      addr649:
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§goto(addr645);
                                                                                                                                             }
                                                                                                                                             §§goto(addr649);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr522);
                                                                                                                                       }
                                                                                                                                       §§goto(addr522);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr511);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr529);
                                                                                                                              }
                                                                                                                              §§goto(addr481);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr526);
                                                                                                                     case 3:
                                                                                                                        §§push(this.container);
                                                                                                                        if(!(_loc10_ && param1))
                                                                                                                        {
                                                                                                                           §§push(param1);
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().getItemByName(§§pop()));
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 §§push((§§pop() as §1-§).getItemByName("TextField_Description"));
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    (§§pop() as §[i§).§7t§.htmlText = §4C§.getText("Popup_Use_Credit_Text");
                                                                                                                                    if(_loc11_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(_loc11_ || param2)
                                                                                                                                       {
                                                                                                                                          if(true)
                                                                                                                                          {
                                                                                                                                             addr653:
                                                                                                                                             §§push(this.container.getItemByName(param1));
                                                                                                                                             if(_loc11_)
                                                                                                                                             {
                                                                                                                                                addr660:
                                                                                                                                                §§push((_loc4_ = (§§pop() as §1-§).getItemByName("MovieClip_CheckBox") as §1-§).getItemByName("TextField_CheckBox"));
                                                                                                                                                if(!(_loc10_ && param2))
                                                                                                                                                {
                                                                                                                                                   (§§pop() as §[i§).§7t§.htmlText = §4C§.getText("Popup_CheckBox_Use_Credits");
                                                                                                                                                   §§push(_loc4_.getItemByName("Checkbox_RememberMe"));
                                                                                                                                                }
                                                                                                                                                _loc5_ = §§pop() as §&!3§;
                                                                                                                                                if(_loc11_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   if(§#x§.§=!!§.§9!E§)
                                                                                                                                                   {
                                                                                                                                                      addr904:
                                                                                                                                                      _loc5_.setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                                                      addr908:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      _loc5_.setComponentState(§&!3§.§;2§);
                                                                                                                                                      addr899:
                                                                                                                                                   }
                                                                                                                                                   addr859:
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§goto(addr899);
                                                                                                                                             }
                                                                                                                                             §§goto(addr660);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr645);
                                                                                                                                       }
                                                                                                                                       §§goto(addr645);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr633);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr660);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr653);
                                                                                                                     case 4:
                                                                                                                        addr870:
                                                                                                                        ((this.container.getItemByName(param1) as §1-§).getItemByName("TextField_Description") as §[i§).§7t§.htmlText = §4C§.getText("Popup_Confirm_Leave");
                                                                                                                        if(_loc11_ || param1)
                                                                                                                        {
                                                                                                                           if(!(_loc10_ && param1))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr904);
                                                                                                                        }
                                                                                                                        §§goto(addr908);
                                                                                                                        addr866:
                                                                                                                        addr865:
                                                                                                                        addr864:
                                                                                                                     case 5:
                                                                                                                        addr820:
                                                                                                                        §§push(this.container);
                                                                                                                        §§push(param1);
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().getItemByName(§§pop()));
                                                                                                                           if(_loc11_ || param1)
                                                                                                                           {
                                                                                                                              if(!(_loc10_ && this))
                                                                                                                              {
                                                                                                                                 if(_loc11_ || param2)
                                                                                                                                 {
                                                                                                                                    §§push((§§pop() as §1-§).getItemByName("TextField_Description"));
                                                                                                                                    if(!_loc11_)
                                                                                                                                    {
                                                                                                                                       addr919:
                                                                                                                                       _loc7_ = §§pop() as §0!@§;
                                                                                                                                       if(_loc11_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       addr953:
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    (§§pop() as §[i§).§7t§.htmlText = §4C§.getText("Popup_SpotPrize_Win_Text");
                                                                                                                                    addr757:
                                                                                                                                    break;
                                                                                                                                    addr858:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr866);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr870);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr912:
                                                                                                                           §§push(§§pop().getItemByName(§§pop()));
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              addr915:
                                                                                                                              §§push((§§pop() as §1-§).getItemByName("Button_RedeemCredit"));
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr919);
                                                                                                                     case 6:
                                                                                                                        §§push(this.container);
                                                                                                                        if(_loc11_ || param1)
                                                                                                                        {
                                                                                                                           if(!(_loc10_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(param1);
                                                                                                                              if(_loc11_)
                                                                                                                              {
                                                                                                                                 if(!(_loc10_ && this))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                    if(!(_loc10_ && this))
                                                                                                                                    {
                                                                                                                                       §§push((§§pop() as §1-§).getItemByName("TextField_Description"));
                                                                                                                                       if(_loc11_)
                                                                                                                                       {
                                                                                                                                          (§§pop() as §[i§).§7t§.htmlText = §4C§.getText("Popup_SpotPrize_Available");
                                                                                                                                          addr807:
                                                                                                                                          if(!(_loc10_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§goto(addr858);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr915);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr865);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr912);
                                                                                                                              }
                                                                                                                              §§goto(addr919);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr864);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr911:
                                                                                                                           §§push(param1);
                                                                                                                        }
                                                                                                                        §§goto(addr912);
                                                                                                                     case 7:
                                                                                                                        §§push(this.container);
                                                                                                                        if(!(_loc10_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              §§push(param1);
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                 if(_loc11_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push((§§pop() as §1-§).getItemByName("TextField_Description"));
                                                                                                                                    if(!(_loc10_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       addr732:
                                                                                                                                       (§§pop() as §[i§).§7t§.htmlText = §4C§.getText("Popup_No_Credit_Text");
                                                                                                                                       if(_loc11_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc10_ && param2))
                                                                                                                                          {
                                                                                                                                             if(!(_loc10_ && this))
                                                                                                                                             {
                                                                                                                                                if(false)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr757);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr911);
                                                                                                                                                   §§push(this.container);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr899);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr870);
                                                                                                                                          }
                                                                                                                                          §§goto(addr859);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr807);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr915);
                                                                                                                                 }
                                                                                                                                 §§goto(addr732);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr820);
                                                                                                                           }
                                                                                                                           §§goto(addr912);
                                                                                                                        }
                                                                                                                        §§goto(addr911);
                                                                                                                     case 8:
                                                                                                                        break;
                                                                                                                     case 9:
                                                                                                                        break;
                                                                                                                     case 10:
                                                                                                                        break;
                                                                                                                     case 11:
                                                                                                                        §§push(this.container.getItemByName(param1));
                                                                                                                        if(!(_loc10_ && param1))
                                                                                                                        {
                                                                                                                           §§push((§§pop() as §1-§).getItemByName("TextField_Description"));
                                                                                                                        }
                                                                                                                        (§§pop() as §[i§).§7t§.htmlText = param2;
                                                                                                                        §§goto(addr953);
                                                                                                                  }
                                                                                                                  §7?§.§3J§();
                                                                                                                  if(_loc11_ || param1)
                                                                                                                  {
                                                                                                                     §3r§ = true;
                                                                                                                  }
                                                                                                                  §§goto(addr1238);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr1010:
                                                                                                               §§push(2);
                                                                                                               if(_loc10_ && param1)
                                                                                                               {
                                                                                                                  addr1133:
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1214);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(§6!5§);
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               §§push(_loc8_);
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  addr1007:
                                                                                                                  if(§§pop() === §§pop())
                                                                                                                  {
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        §§goto(addr1010);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr1143:
                                                                                                                        §§push(8);
                                                                                                                        if(_loc11_ || this)
                                                                                                                        {
                                                                                                                           addr1151:
                                                                                                                           §§goto(addr1214);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr1174);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1214);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(RESTART_LEVEL);
                                                                                                                     if(_loc11_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(_loc8_);
                                                                                                                        if(_loc11_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(§§pop() === §§pop())
                                                                                                                           {
                                                                                                                              if(!(_loc10_ && this))
                                                                                                                              {
                                                                                                                                 §§goto(addr1043);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr1130:
                                                                                                                                 §§push(7);
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1133);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1214);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(CONFIRM_LEAVE);
                                                                                                                              if(!(_loc10_ && param2))
                                                                                                                              {
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    if(§§pop() === §§pop())
                                                                                                                                    {
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          §§push(4);
                                                                                                                                          if(_loc11_ || param1)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1214);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr1120);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr1089:
                                                                                                                                          §§push(5);
                                                                                                                                          if(_loc10_)
                                                                                                                                          {
                                                                                                                                             addr1202:
                                                                                                                                          }
                                                                                                                                          §§goto(addr1214);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1214);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(§%!'§);
                                                                                                                                       if(_loc11_ || param2)
                                                                                                                                       {
                                                                                                                                          §§push(_loc8_);
                                                                                                                                          if(_loc11_)
                                                                                                                                          {
                                                                                                                                             addr1086:
                                                                                                                                             if(§§pop() === §§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc11_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1089);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr1194:
                                                                                                                                                   §§push(10);
                                                                                                                                                   if(!(_loc10_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1202);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1214);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(SPOT_PRIZE_AVAILABLE);
                                                                                                                                                if(_loc11_ || param2)
                                                                                                                                                {
                                                                                                                                                   addr1101:
                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                   if(!_loc10_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() === §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc10_ && param2))
                                                                                                                                                         {
                                                                                                                                                            §§push(6);
                                                                                                                                                            if(_loc11_ || param2)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1120);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1151);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1130);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1214);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(NO_CREDIT);
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                            if(!_loc10_)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() === §§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc11_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1130);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr1166:
                                                                                                                                                                     §§push(9);
                                                                                                                                                                     if(_loc11_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1174);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1214);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§push(PRACTICE_1_2_COMPLETE);
                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     addr1137:
                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        addr1140:
                                                                                                                                                                        if(§§pop() === §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc11_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr1143);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1214);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§push(PRACTICE_3_COMPLETE);
                                                                                                                                                                           if(!(_loc10_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                              if(!_loc10_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1163:
                                                                                                                                                                                 if(§§pop() === §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1166);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1194);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§6U§);
                                                                                                                                                                                    if(!(_loc10_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1183:
                                                                                                                                                                                       §§push(_loc8_);
                                                                                                                                                                                       if(_loc11_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1186:
                                                                                                                                                                                          if(§§pop() === §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc11_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1194);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1205:
                                                                                                                                                                                             if(ERROR !== _loc8_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1214);
                                                                                                                                                                                                §§push(12);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1214);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1205);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1214);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1205);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1183);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1214);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1205);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1214);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1140);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1183);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1186);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1183);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1214);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1163);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1101);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1186);
                                                                                                                              }
                                                                                                                              §§goto(addr1101);
                                                                                                                           }
                                                                                                                           §§goto(addr1214);
                                                                                                                        }
                                                                                                                        §§goto(addr1140);
                                                                                                                     }
                                                                                                                     §§goto(addr1183);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1086);
                                                                                                            }
                                                                                                            §§goto(addr1137);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1205);
                                                                                                   }
                                                                                                   §§goto(addr1137);
                                                                                                }
                                                                                                §§goto(addr1214);
                                                                                             }
                                                                                             §§goto(addr1007);
                                                                                          }
                                                                                          §§goto(addr1205);
                                                                                       }
                                                                                       §§goto(addr1166);
                                                                                    }
                                                                                    §§goto(addr1214);
                                                                                 }
                                                                                 §§goto(addr230);
                                                                              }
                                                                              §§goto(addr239);
                                                                           }
                                                                           §§goto(addr238);
                                                                        }
                                                                        §§goto(addr237);
                                                                     }
                                                                     §§goto(addr236);
                                                                  }
                                                                  addr235:
                                                                  §§goto(addr235);
                                                               }
                                                               §§goto(addr208);
                                                            }
                                                            addr44:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr156);
                                                      }
                                                   }
                                                   §§goto(addr111);
                                                }
                                                §§goto(addr95);
                                             }
                                             continue loop1;
                                          }
                                          return §§pop();
                                       }
                                       if(!(_loc11_ || this))
                                       {
                                          break;
                                       }
                                       if(_loc11_ || param1)
                                       {
                                          §§push(false);
                                          addr145:
                                       }
                                       continue loop0;
                                       return §§pop();
                                    }
                                    §§goto(addr61);
                                 }
                                 §§goto(addr157);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr162);
      }
      
      public function hidePopup() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:String = null;
         var _loc2_:§;d§ = null;
         if(_loc6_)
         {
            if(this.§"!-§)
            {
               if(!_loc5_)
               {
                  if(this.container)
                  {
                     addr33:
                     for each(_loc1_ in §;B§)
                     {
                        _loc2_ = this.container.getItemByName(_loc1_);
                        if(!_loc5_)
                        {
                           if(_loc2_)
                           {
                              if(!(_loc5_ && _loc2_))
                              {
                                 _loc2_.setVisibility(false);
                              }
                           }
                        }
                     }
                     if(_loc6_ || _loc2_)
                     {
                        addr125:
                        this.container.getItemByName(§[=§).setVisibility(false);
                        loop0:
                        while(true)
                        {
                           if(§1!C§.§84§ != false)
                           {
                              loop3:
                              while(true)
                              {
                                 §3r§ = false;
                                 if(_loc6_)
                                 {
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 addr124:
                                 while(true)
                                 {
                                    continue loop3;
                                 }
                              }
                           }
                           continue;
                           return;
                        }
                     }
                     §§goto(addr124);
                  }
               }
               §§goto(addr33);
            }
            §§goto(addr125);
         }
         §§goto(addr33);
      }
      
      public function getCurrentPopupName() : String
      {
         return this.§"!-§;
      }
   }
}
