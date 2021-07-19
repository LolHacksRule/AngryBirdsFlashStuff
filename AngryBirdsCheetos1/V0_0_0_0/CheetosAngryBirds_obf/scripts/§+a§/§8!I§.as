package §+a§
{
   import §!J§.§[&§;
   import §"!+§.§6!7§;
   import §+?§.§,!N§;
   import §6p§.§0o§;
   import §8!8§.§+!M§;
   import §8!8§.§1!-§;
   import §8!8§.§4!C§;
   import §8!8§.§false§;
   import §<!U§.§]u§;
   import §@R§.§']§;
   import §@R§.§<d§;
   import §]2§.§[4§;
   import flash.display.MovieClip;
   
   public class §8!I§ implements §false§
   {
      
      public static const ERROR:String = "error";
      
      public static const §-k§:String = "quit";
      
      public static const §<$§:String = "win_spot";
      
      public static const SPOT_PRIZE_AVAILABLE:String = "spotprize_available";
      
      public static const RESTART_LEVEL:String = "leave_level";
      
      public static const §%!M§:String = "use_credit";
      
      public static const §0H§:String = "use_credit_cheetos";
      
      public static const NO_CREDIT:String = "no_credit";
      
      public static const §`!>§:String = "session_expired";
      
      public static const PRACTICE_1_2_COMPLETE:String = "practice1_2_complete";
      
      public static const PRACTICE_3_COMPLETE:String = "practice3_complete";
      
      public static const §^9§:String = "thanks";
      
      public static const CONFIRM_LEAVE:String = "confirm_leave";
      
      private static var § !R§:Array;
      
      private static var §2!B§:Array;
      
      private static const §=V§:String = "DarkBg";
      
      private static var §#!=§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            ERROR = "error";
            while(true)
            {
               §-k§ = "quit";
               loop1:
               while(true)
               {
                  §<$§ = "win_spot";
                  loop2:
                  while(true)
                  {
                     SPOT_PRIZE_AVAILABLE = "spotprize_available";
                     loop3:
                     while(true)
                     {
                        RESTART_LEVEL = "leave_level";
                        while(true)
                        {
                           §%!M§ = "use_credit";
                           addr191:
                           addr141:
                           while(true)
                           {
                              §0H§ = "use_credit_cheetos";
                              continue loop2;
                           }
                           if(_loc1_ && _loc1_)
                           {
                              continue;
                           }
                           while(true)
                           {
                              PRACTICE_3_COMPLETE = "practice3_complete";
                              loop11:
                              while(_loc2_)
                              {
                                 §^9§ = "thanks";
                                 continue loop3;
                                 loop14:
                                 for(; _loc2_ || _loc2_; if(_loc2_ || _loc1_)
                                 {
                                    return;
                                 })
                                 {
                                    if(!_loc1_)
                                    {
                                       §2!B§ = [§-k§,RESTART_LEVEL,§%!M§];
                                       loop15:
                                       do
                                       {
                                          §=V§ = "DarkBg";
                                          while(_loc2_)
                                          {
                                             §#!=§ = false;
                                             if(!_loc1_)
                                             {
                                                continue loop15;
                                             }
                                          }
                                          addr96:
                                          while(true)
                                          {
                                             if(!(_loc1_ && §8!I§))
                                             {
                                                if(!_loc2_)
                                                {
                                                   break;
                                                }
                                                § !R§ = [ERROR,§-k§,§<$§,SPOT_PRIZE_AVAILABLE,RESTART_LEVEL,NO_CREDIT,§%!M§,§0H§,§`!>§,PRACTICE_1_2_COMPLETE,PRACTICE_3_COMPLETE,§^9§,CONFIRM_LEAVE];
                                                continue loop14;
                                             }
                                             continue loop3;
                                          }
                                          continue loop1;
                                       }
                                       while(!(_loc2_ || §8!I§));
                                       
                                       continue;
                                    }
                                    loop8:
                                    while(true)
                                    {
                                       if(_loc2_ || _loc2_)
                                       {
                                          if(!_loc1_)
                                          {
                                             PRACTICE_1_2_COMPLETE = "practice1_2_complete";
                                             break loop11;
                                          }
                                          break;
                                       }
                                       addr167:
                                       while(true)
                                       {
                                          §`!>§ = "session_expired";
                                          continue loop8;
                                       }
                                    }
                                    §§goto(addr191);
                                 }
                              }
                              while(_loc2_)
                              {
                                 §§goto(addr141);
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               NO_CREDIT = "no_credit";
               §§goto(addr167);
            }
         }
         §§goto(addr148);
      }
      
      private var §`&§:String;
      
      private var §08§:§4!C§;
      
      public function §8!I§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function get §,t§() : Boolean
      {
         return §#!=§;
      }
      
      public function set container(param1:§4!C§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§08§ = param1;
         }
      }
      
      public function get container() : §4!C§
      {
         return this.§08§;
      }
      
      public function §2!,§(param1:XML, param2:§4!C§, param3:§,!N§, param4:§[4§, param5:MovieClip = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            this.container = new §0o§(param1,param2,param3,param4 as §]u§,param5);
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
         var _loc4_:§4!C§ = null;
         var _loc5_:§<d§ = null;
         var _loc6_:§']§ = null;
         var _loc7_:§+!M§ = null;
         if(_loc11_)
         {
            if(this.container != null)
            {
               loop0:
               while(true)
               {
                  §§push(§,l§.§,?§);
                  loop1:
                  while(true)
                  {
                     §§push(§§pop().§+d§);
                     if(_loc11_)
                     {
                        if(!_loc10_)
                        {
                           §§push(Boolean(§§pop()));
                           loop2:
                           while(true)
                           {
                              §§push(§§pop());
                              loop3:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    addr146:
                                    while(true)
                                    {
                                       §§pop();
                                       addr147:
                                       while(true)
                                       {
                                          §§push(§2!B§.indexOf(param1) > -1);
                                       }
                                    }
                                    addr146:
                                 }
                                 while(true)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             §§push(§,l§.§,?§);
                                             if(_loc10_ && this)
                                             {
                                                break;
                                             }
                                             §§push(§§pop().§#! §);
                                             loop7:
                                             while(true)
                                             {
                                                if(_loc11_)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop8:
                                                      for(; !_loc10_; if(!(_loc10_ && this))
                                                      {
                                                         continue loop7;
                                                      })
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc10_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            while(§§pop())
                                                            {
                                                               if(_loc11_ || this)
                                                               {
                                                                  if(!(_loc11_ || this))
                                                                  {
                                                                     if(!_loc11_)
                                                                     {
                                                                        break loop7;
                                                                     }
                                                                     if(_loc11_)
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(false);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr152:
                                                                        }
                                                                        continue loop6;
                                                                        break loop1;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  §§push(false);
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     if(_loc10_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           addr110:
                                                                           while(true)
                                                                           {
                                                                              if(_loc10_ && this)
                                                                              {
                                                                                 return false;
                                                                              }
                                                                              addr126:
                                                                              addr127:
                                                                              §§push(param1 == §8!I§.§0H§);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              continue loop12;
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        addr109:
                                                                     }
                                                                     if(_loc11_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                               }
                                                               else if(!(_loc10_ && this))
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               §§goto(addr110);
                                                            }
                                                            var _loc8_:* = 0;
                                                            var _loc9_:* = § !R§;
                                                            addr185:
                                                            for each(_loc3_ in _loc9_)
                                                            {
                                                               if(_loc6_ = this.container.getItemByName(_loc3_))
                                                               {
                                                                  if(!(_loc10_ && _loc3_))
                                                                  {
                                                                     _loc6_.setVisibility(false);
                                                                  }
                                                               }
                                                               §§goto(addr185);
                                                            }
                                                            if(!_loc10_)
                                                            {
                                                               addr248:
                                                               this.container.getItemByName(param1).setVisibility(true);
                                                            }
                                                            addr205:
                                                            addr249:
                                                            §§push(this.container);
                                                            if(!(_loc10_ && _loc3_))
                                                            {
                                                               §§push(§=V§);
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  §§push(§§pop().getItemByName(§§pop()));
                                                                  if(_loc11_ || param2)
                                                                  {
                                                                     §§push(true);
                                                                     if(_loc11_ || param1)
                                                                     {
                                                                        §§pop().setVisibility(§§pop());
                                                                        addr240:
                                                                        if(!_loc10_)
                                                                        {
                                                                           this.§`&§ = param1;
                                                                           if(_loc11_ || param2)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr205);
                                                                              }
                                                                              _loc4_ = null;
                                                                              _loc5_ = null;
                                                                              if(!(_loc10_ && _loc3_))
                                                                              {
                                                                                 _loc8_ = param1;
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    §§push(§-k§);
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       if(_loc11_ || this)
                                                                                       {
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(_loc11_ || param1)
                                                                                             {
                                                                                                §§push(0);
                                                                                                if(!(_loc11_ || this))
                                                                                                {
                                                                                                   addr998:
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr1054:
                                                                                                §§push(5);
                                                                                                if(!(_loc11_ || param1))
                                                                                                {
                                                                                                   addr1169:
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(§%!M§);
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                §§push(_loc8_);
                                                                                                if(_loc11_ || _loc3_)
                                                                                                {
                                                                                                   addr969:
                                                                                                   if(§§pop() === §§pop())
                                                                                                   {
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         §§push(1);
                                                                                                         if(_loc11_ || param1)
                                                                                                         {
                                                                                                            addr1199:
                                                                                                            switch(§§pop())
                                                                                                            {
                                                                                                               case 0:
                                                                                                                  §§push(this.container);
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     §§push(param1);
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().getItemByName(§§pop()));
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           §§push((§§pop() as §4!C§).getItemByName("TextField_Description"));
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              (§§pop() as §1!-§).§#!F§.htmlText = §6!7§.getText("Popup_Leave_Level_Text");
                                                                                                                              if(!(_loc10_ && this))
                                                                                                                              {
                                                                                                                                 addr298:
                                                                                                                                 addr297:
                                                                                                                                 addr295:
                                                                                                                                 §§push(this.container.getItemByName(param1));
                                                                                                                                 if(_loc10_ && _loc3_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 addr310:
                                                                                                                                 §§push((_loc4_ = §§pop() as §4!C§).getItemByName("TextField_CheckBox"));
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    (§§pop() as §1!-§).§#!F§.htmlText = §6!7§.getText("Popup_CheckBox_Use_Credits");
                                                                                                                                    §§push(_loc4_.getItemByName("Checkbox_RememberMe"));
                                                                                                                                 }
                                                                                                                                 _loc5_ = §§pop() as §<d§;
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    §§push(§,l§.§,?§.§+d§);
                                                                                                                                    if(!(_loc10_ && this))
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc11_)
                                                                                                                                          {
                                                                                                                                             _loc5_.setComponentState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                addr336:
                                                                                                                                                break;
                                                                                                                                                addr376:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          _loc5_.setComponentState(§<d§.§^#§);
                                                                                                                                          if(!_loc10_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr336);
                                                                                                                                          }
                                                                                                                                          addr1215:
                                                                                                                                          §#!=§ = true;
                                                                                                                                       }
                                                                                                                                       addr1218:
                                                                                                                                       return true;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr374:
                                                                                                                                 if(true)
                                                                                                                                 {
                                                                                                                                    addr421:
                                                                                                                                    §§push(this.container.getItemByName(param1));
                                                                                                                                    if(_loc11_ || param1)
                                                                                                                                    {
                                                                                                                                       addr417:
                                                                                                                                       §§push((§§pop() as §4!C§).getItemByName("MovieClip_CheckBox"));
                                                                                                                                    }
                                                                                                                                    §§push((_loc4_ = §§pop() as §4!C§).getItemByName("TextField_CheckBox"));
                                                                                                                                    if(_loc11_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       (§§pop() as §1!-§).§#!F§.htmlText = §6!7§.getText("Popup_CheckBox_Use_Credits");
                                                                                                                                       §§push(_loc4_.getItemByName("Checkbox_RememberMe"));
                                                                                                                                    }
                                                                                                                                    _loc5_ = §§pop() as §<d§;
                                                                                                                                    if(_loc11_ || param1)
                                                                                                                                    {
                                                                                                                                       if(§,l§.§,?§.§+d§)
                                                                                                                                       {
                                                                                                                                          addr513:
                                                                                                                                          _loc5_.setComponentState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                                          addr501:
                                                                                                                                          addr517:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          _loc5_.setComponentState(§<d§.§^#§);
                                                                                                                                          addr508:
                                                                                                                                       }
                                                                                                                                       addr457:
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    addr499:
                                                                                                                                    if(true)
                                                                                                                                    {
                                                                                                                                       addr533:
                                                                                                                                       §§push(this.container.getItemByName(param1));
                                                                                                                                       if(!(_loc10_ && param2))
                                                                                                                                       {
                                                                                                                                          §§push((§§pop() as §4!C§).getItemByName("MovieClip_CheckBox"));
                                                                                                                                       }
                                                                                                                                       §§push((_loc4_ = §§pop() as §4!C§).getItemByName("TextField_CheckBox"));
                                                                                                                                       if(_loc11_)
                                                                                                                                       {
                                                                                                                                          (§§pop() as §1!-§).§#!F§.htmlText = §6!7§.getText("Popup_CheckBox_Use_Cheetos_Bag");
                                                                                                                                          §§push(_loc4_.getItemByName("Checkbox_RememberMe"));
                                                                                                                                       }
                                                                                                                                       _loc5_ = §§pop() as §<d§;
                                                                                                                                       if(_loc11_ || param1)
                                                                                                                                       {
                                                                                                                                          if(!§,l§.§,?§.§#! §)
                                                                                                                                          {
                                                                                                                                             _loc5_.setComponentState(§<d§.§^#§);
                                                                                                                                             addr631:
                                                                                                                                             if(_loc11_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                if(_loc10_ && this)
                                                                                                                                                {
                                                                                                                                                   addr650:
                                                                                                                                                   _loc5_.setComponentState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                                                   addr654:
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr654);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr650);
                                                                                                                                    }
                                                                                                                                    §§goto(addr501);
                                                                                                                                 }
                                                                                                                                 §§goto(addr376);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push((§§pop() as §4!C§).getItemByName("MovieClip_CheckBox"));
                                                                                                                        }
                                                                                                                        §§goto(addr310);
                                                                                                                     }
                                                                                                                     §§goto(addr298);
                                                                                                                  }
                                                                                                                  §§goto(addr297);
                                                                                                               case 1:
                                                                                                                  §§push(this.container);
                                                                                                                  if(!(_loc10_ && param2))
                                                                                                                  {
                                                                                                                     §§push(param1);
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().getItemByName(§§pop()));
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           §§push((§§pop() as §4!C§).getItemByName("TextField_Description"));
                                                                                                                           if(_loc11_ || _loc3_)
                                                                                                                           {
                                                                                                                              (§§pop() as §1!-§).§#!F§.htmlText = §6!7§.getText("Popup_Use_Credit_Text");
                                                                                                                              if(_loc11_)
                                                                                                                              {
                                                                                                                                 §§goto(addr374);
                                                                                                                              }
                                                                                                                              §§goto(addr1215);
                                                                                                                           }
                                                                                                                           §§goto(addr417);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr421);
                                                                                                               case 2:
                                                                                                                  §§push(this.container);
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     §§push(param1);
                                                                                                                     if(_loc11_ || param1)
                                                                                                                     {
                                                                                                                        §§push(§§pop().getItemByName(§§pop()));
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           §§push((§§pop() as §4!C§).getItemByName("TextField_Description"));
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              addr481:
                                                                                                                              (§§pop() as §1!-§).§#!F§.htmlText = §6!7§.getText("Popup_Use_Credit_Cheetos_Text");
                                                                                                                              if(_loc11_)
                                                                                                                              {
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc10_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§goto(addr499);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr513);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr517);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr508);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr533);
                                                                                                                        }
                                                                                                                        §§goto(addr481);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr533);
                                                                                                               case 3:
                                                                                                                  §§push(this.container);
                                                                                                                  if(!(_loc10_ && this))
                                                                                                                  {
                                                                                                                     §§push(param1);
                                                                                                                     if(_loc11_ || this)
                                                                                                                     {
                                                                                                                        §§push(§§pop().getItemByName(§§pop()));
                                                                                                                        if(_loc11_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push((§§pop() as §4!C§).getItemByName("TextField_Description"));
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              (§§pop() as §1!-§).§#!F§.htmlText = §6!7§.getText("Popup_Use_Credit_Text");
                                                                                                                              if(!(_loc10_ && this))
                                                                                                                              {
                                                                                                                                 if(true)
                                                                                                                                 {
                                                                                                                                    addr658:
                                                                                                                                    §§push(this.container.getItemByName(param1));
                                                                                                                                    if(!(_loc10_ && param1))
                                                                                                                                    {
                                                                                                                                       addr670:
                                                                                                                                       §§push((_loc4_ = (§§pop() as §4!C§).getItemByName("MovieClip_CheckBox") as §4!C§).getItemByName("TextField_CheckBox"));
                                                                                                                                       if(_loc11_)
                                                                                                                                       {
                                                                                                                                          (§§pop() as §1!-§).§#!F§.htmlText = §6!7§.getText("Popup_CheckBox_Use_Credits");
                                                                                                                                          §§push(_loc4_.getItemByName("Checkbox_RememberMe"));
                                                                                                                                       }
                                                                                                                                       _loc5_ = §§pop() as §<d§;
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          if(§,l§.§,?§.§+d§)
                                                                                                                                          {
                                                                                                                                             addr874:
                                                                                                                                             _loc5_.setComponentState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                                             addr878:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             _loc5_.setComponentState(§<d§.§^#§);
                                                                                                                                             addr869:
                                                                                                                                          }
                                                                                                                                          addr834:
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr869);
                                                                                                                                    }
                                                                                                                                    §§goto(addr670);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr631);
                                                                                                                              }
                                                                                                                              §§goto(addr650);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr670);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr658);
                                                                                                               case 4:
                                                                                                                  addr840:
                                                                                                                  addr839:
                                                                                                                  §§push(this.container.getItemByName(param1));
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                     §§push((§§pop() as §4!C§).getItemByName("TextField_Description"));
                                                                                                                     if(!(_loc10_ && _loc3_))
                                                                                                                     {
                                                                                                                        (§§pop() as §1!-§).§#!F§.htmlText = §6!7§.getText("Popup_Confirm_Leave");
                                                                                                                        break;
                                                                                                                        addr861:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr890:
                                                                                                                        §§push((§§pop() as §4!C§).getItemByName("Button_RedeemCredit"));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  _loc7_ = §§pop() as §+!M§;
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  addr923:
                                                                                                                  break;
                                                                                                               case 5:
                                                                                                                  §§push(this.container);
                                                                                                                  if(_loc11_ || param1)
                                                                                                                  {
                                                                                                                     addr806:
                                                                                                                     §§push(param1);
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        addr815:
                                                                                                                        §§push(§§pop().getItemByName(§§pop()));
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           §§push((§§pop() as §4!C§).getItemByName("TextField_Description"));
                                                                                                                        }
                                                                                                                        (§§pop() as §1!-§).§#!F§.htmlText = §6!7§.getText("Popup_SpotPrize_Win_Text");
                                                                                                                        addr822:
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              if(!(_loc10_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr766:
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§goto(addr878);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr869);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr840);
                                                                                                                     }
                                                                                                                     §§goto(addr861);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr881:
                                                                                                                     §§push(§§pop().getItemByName(param1));
                                                                                                                     if(_loc11_ || param1)
                                                                                                                     {
                                                                                                                        §§goto(addr890);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr840);
                                                                                                               case 6:
                                                                                                                  addr771:
                                                                                                                  §§push(this.container);
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                     addr774:
                                                                                                                     §§push(param1);
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        addr777:
                                                                                                                        §§push((§§pop().getItemByName(§§pop()) as §4!C§).getItemByName("TextField_Description"));
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           (§§pop() as §1!-§).§#!F§.htmlText = §6!7§.getText("Popup_SpotPrize_Available");
                                                                                                                           addr790:
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr874);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr890);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr806);
                                                                                                                     }
                                                                                                                     §§goto(addr840);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr839);
                                                                                                                  }
                                                                                                               case 7:
                                                                                                                  §§push(this.container);
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     if(_loc11_ || param2)
                                                                                                                     {
                                                                                                                        §§push(param1);
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           if(_loc11_ || param1)
                                                                                                                           {
                                                                                                                              §§push(§§pop().getItemByName(§§pop()));
                                                                                                                              if(_loc11_ || param1)
                                                                                                                              {
                                                                                                                                 if(_loc11_ || param2)
                                                                                                                                 {
                                                                                                                                    §§push((§§pop() as §4!C§).getItemByName("TextField_Description"));
                                                                                                                                    if(!(_loc10_ && param2))
                                                                                                                                    {
                                                                                                                                       if(!(_loc10_ && param1))
                                                                                                                                       {
                                                                                                                                          (§§pop() as §1!-§).§#!F§.htmlText = §6!7§.getText("Popup_No_Credit_Text");
                                                                                                                                          if(_loc11_)
                                                                                                                                          {
                                                                                                                                             if(_loc11_)
                                                                                                                                             {
                                                                                                                                                if(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr881);
                                                                                                                                                   §§push(this.container);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr822);
                                                                                                                                             }
                                                                                                                                             §§goto(addr766);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr790);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr815);
                                                                                                                                       }
                                                                                                                                       §§goto(addr815);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr777);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr890);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr774);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr881);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr771);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr881);
                                                                                                               case 8:
                                                                                                                  break;
                                                                                                               case 9:
                                                                                                                  break;
                                                                                                               case 10:
                                                                                                                  break;
                                                                                                               case 11:
                                                                                                                  §§push(this.container.getItemByName(param1));
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                     §§push((§§pop() as §4!C§).getItemByName("TextField_Description"));
                                                                                                                  }
                                                                                                                  (§§pop() as §1!-§).§#!F§.htmlText = param2;
                                                                                                                  §§goto(addr923);
                                                                                                            }
                                                                                                            §[&§.§[]§();
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               §§goto(addr1215);
                                                                                                            }
                                                                                                            §§goto(addr1218);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr1039:
                                                                                                            §§goto(addr1199);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr1179:
                                                                                                         §§push(10);
                                                                                                         if(!(_loc10_ && this))
                                                                                                         {
                                                                                                            addr1187:
                                                                                                         }
                                                                                                         §§goto(addr1199);
                                                                                                      }
                                                                                                      §§goto(addr1199);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(§0H§);
                                                                                                      if(_loc11_ || param2)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            if(§§pop() === §§pop())
                                                                                                            {
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  §§push(2);
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     §§goto(addr998);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr1016:
                                                                                                                     §§goto(addr1199);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr1077:
                                                                                                                  §§push(6);
                                                                                                                  if(!(_loc11_ || param2))
                                                                                                                  {
                                                                                                                     addr1113:
                                                                                                                  }
                                                                                                                  §§goto(addr1199);
                                                                                                               }
                                                                                                               §§goto(addr1199);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(RESTART_LEVEL);
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  §§push(_loc8_);
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     if(§§pop() === §§pop())
                                                                                                                     {
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           §§push(3);
                                                                                                                           if(!(_loc10_ && this))
                                                                                                                           {
                                                                                                                              §§goto(addr1016);
                                                                                                                           }
                                                                                                                           §§goto(addr1199);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr1054);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(CONFIRM_LEAVE);
                                                                                                                        if(!(_loc10_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(_loc8_);
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              if(§§pop() === §§pop())
                                                                                                                              {
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    §§push(4);
                                                                                                                                    if(!(_loc10_ && param2))
                                                                                                                                    {
                                                                                                                                       §§goto(addr1039);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1199);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr1179);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(§<$§);
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    addr1043:
                                                                                                                                    §§push(_loc8_);
                                                                                                                                    if(_loc11_)
                                                                                                                                    {
                                                                                                                                       if(§§pop() === §§pop())
                                                                                                                                       {
                                                                                                                                          if(!(_loc10_ && this))
                                                                                                                                          {
                                                                                                                                             §§goto(addr1054);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr1128:
                                                                                                                                             §§push(8);
                                                                                                                                             if(_loc11_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1199);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr1187);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1199);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(SPOT_PRIZE_AVAILABLE);
                                                                                                                                          if(_loc11_)
                                                                                                                                          {
                                                                                                                                             addr1066:
                                                                                                                                             §§push(_loc8_);
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                addr1069:
                                                                                                                                                if(§§pop() === §§pop())
                                                                                                                                                {
                                                                                                                                                   if(!(_loc10_ && param2))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1077);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr1105:
                                                                                                                                                      §§push(7);
                                                                                                                                                      if(!(_loc10_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1113);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1199);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push(NO_CREDIT);
                                                                                                                                                   if(_loc11_)
                                                                                                                                                   {
                                                                                                                                                      addr1089:
                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                      if(_loc11_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() === §§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc10_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1105);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr1161:
                                                                                                                                                               §§push(9);
                                                                                                                                                               if(_loc11_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1169);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1187);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1199);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§push(PRACTICE_1_2_COMPLETE);
                                                                                                                                                            if(_loc10_ && this)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            addr1145:
                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                            if(_loc11_ || param1)
                                                                                                                                                            {
                                                                                                                                                               addr1153:
                                                                                                                                                               if(§§pop() === §§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc11_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1161);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1199);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§push(§^9§);
                                                                                                                                                                  if(_loc11_)
                                                                                                                                                                  {
                                                                                                                                                                     addr1173:
                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        addr1176:
                                                                                                                                                                        if(§§pop() === §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr1179);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              addr1191:
                                                                                                                                                                              §§push(11);
                                                                                                                                                                              if(_loc10_)
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1199);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr1189:
                                                                                                                                                                           §§push(ERROR);
                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1191);
                                                                                                                                                                     }
                                                                                                                                                                     addr1190:
                                                                                                                                                                     if(§§pop() !== §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1199);
                                                                                                                                                                        §§push(12);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1199);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1189);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1176);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1176);
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                   if(_loc11_)
                                                                                                                                                   {
                                                                                                                                                      addr1125:
                                                                                                                                                      if(§§pop() === §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1128);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1179);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(PRACTICE_3_COMPLETE);
                                                                                                                                                         if(_loc11_ || param2)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1145);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1189);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1199);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1190);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1199);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1125);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1173);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1176);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1189);
                                                                                                                              }
                                                                                                                              §§goto(addr1199);
                                                                                                                           }
                                                                                                                           §§goto(addr1153);
                                                                                                                        }
                                                                                                                        §§goto(addr1173);
                                                                                                                     }
                                                                                                                     §§goto(addr1199);
                                                                                                                  }
                                                                                                                  §§goto(addr1069);
                                                                                                               }
                                                                                                               §§goto(addr1043);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1125);
                                                                                                      }
                                                                                                      §§goto(addr1145);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1125);
                                                                                             }
                                                                                             §§goto(addr1066);
                                                                                          }
                                                                                          §§goto(addr1199);
                                                                                       }
                                                                                       §§goto(addr969);
                                                                                    }
                                                                                    §§goto(addr1089);
                                                                                 }
                                                                                 §§goto(addr1161);
                                                                              }
                                                                              §§goto(addr295);
                                                                           }
                                                                           §§goto(addr240);
                                                                        }
                                                                        §§goto(addr249);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr248);
                                                            addr56:
                                                         }
                                                         §§goto(addr109);
                                                      }
                                                      continue loop2;
                                                   }
                                                   §§goto(addr146);
                                                }
                                                §§goto(addr127);
                                             }
                                             §§goto(addr147);
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr126);
                                    }
                                 }
                              }
                           }
                        }
                        break;
                     }
                     §§goto(addr146);
                  }
                  return §§pop();
               }
            }
            §§goto(addr152);
         }
         §§goto(addr154);
      }
      
      public function hidePopup() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:String = null;
         var _loc2_:§']§ = null;
         if(_loc6_)
         {
            if(this.§`&§)
            {
               if(_loc6_)
               {
                  addr30:
                  if(!this.container)
                  {
                  }
                  addr120:
                  this.container.getItemByName(§=V§).setVisibility(false);
                  loop1:
                  while(§,F§.§,t§ == false)
                  {
                     if(!_loc5_)
                     {
                        if(!_loc6_)
                        {
                           continue;
                        }
                        §[&§.§>!E§();
                     }
                     while(true)
                     {
                        break loop1;
                     }
                     return;
                  }
                  while(true)
                  {
                     §#!=§ = false;
                     if(_loc5_ && this)
                     {
                        continue;
                     }
                     §§goto(addr97);
                  }
                  addr126:
               }
               for each(_loc1_ in § !R§)
               {
                  _loc2_ = this.container.getItemByName(_loc1_);
                  if(_loc6_)
                  {
                     if(!_loc2_)
                     {
                        continue;
                     }
                     if(_loc5_ && _loc1_)
                     {
                        continue;
                     }
                  }
                  _loc2_.setVisibility(false);
               }
               if(_loc6_)
               {
                  §§goto(addr120);
               }
               §§goto(addr126);
            }
            §§goto(addr120);
         }
         §§goto(addr30);
      }
      
      public function getCurrentPopupName() : String
      {
         return this.§`&§;
      }
   }
}
