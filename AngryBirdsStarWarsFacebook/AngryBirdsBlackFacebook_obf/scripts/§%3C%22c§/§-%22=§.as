package §<"c§
{
   import § "4§.§7q§;
   import § "v§.TournamentResultsPopup;
   import §!"e§.§9#B§;
   import §!"e§.FriendsPromoPopup;
   import §!"e§.GenericMessagePopup;
   import §!"e§.§`"W§;
   import §"k§.§4#G§;
   import §"k§.§]"V§;
   import §+!!§.§9"i§;
   import §,"N§.§1t§;
   import §,"N§.§8"3§;
   import §,"N§.§@"b§;
   import §,"N§.§@#B§;
   import §2"§.§"u§;
   import §7#W§.§,!i§;
   import §7#W§.§6!W§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §?m§.§[#;§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import §^V§.Logging;
   import §`!o§.§+"k§;
   import com.angrybirds.§,!q§;
   import com.furusystems.dconsole2.DConsole;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.net.FileFilter;
   import flash.net.FileReference;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.ui.Keyboard;
   
   public class §-"=§ extends §9U§
   {
      
      private static const § "B§:String = "start_hover_tournament_button";
      
      private static const §@U§:String = "http://www.angrybirds.com/toons?ref=abswfb";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            § "B§ = "start_hover_tournament_button";
            do
            {
               §@U§ = "http://www.angrybirds.com/toons?ref=abswfb";
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      private var §?-§:§@"b§;
      
      private var §1"i§:MovieClip;
      
      private var §>";§:int;
      
      private var §2#+§:Boolean;
      
      private var §+f§:§,!i§;
      
      private var §=#]§:Boolean = true;
      
      private var §!!v§:FileReference;
      
      public function §-"=§(param1:§+"2§, param2:§5"H§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override protected function init() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc1_))
         {
            super.init();
            if(_loc3_ || _loc1_)
            {
               this.§?-§ = §@#B§(§4#;§.singleton.dataModel).§!!C§;
            }
         }
         §§push(§@#B§(§4#;§.singleton.dataModel).§!!C§.§"#'§);
         if(_loc3_ || _loc1_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:MovieClip = §@;§.getItemByName("Button_Tournaments").mClip.content;
         if(_loc3_ || _loc3_)
         {
            if(_loc1_ != 1)
            {
               _loc2_.tournamentAnimation1.visible = false;
               loop0:
               while(true)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     if(_loc3_ || this)
                     {
                        while(true)
                        {
                           _loc2_.tournamentAnimation1.stop();
                           loop10:
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 this.§1"i§ = _loc2_.tournamentAnimation2;
                                 loop7:
                                 while(true)
                                 {
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr138:
                                       loop4:
                                       while(true)
                                       {
                                          this.§>";§ = this.§-#F§(this.§1"i§,§ "B§);
                                          loop5:
                                          while(true)
                                          {
                                             this.§2#+§ = false;
                                             addr107:
                                             loop6:
                                             for(; !(_loc4_ && this); DConsole.§0#Q§("loadLevel",this.loadLevel),if(_loc3_ || this)
                                             {
                                                if(_loc3_)
                                                {
                                                   break loop5;
                                                }
                                                continue loop5;
                                             })
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue;
                                                }
                                                addr196:
                                                while(true)
                                                {
                                                   _loc2_.tournamentAnimation2.stop();
                                                   addr188:
                                                   while(true)
                                                   {
                                                      this.§1"i§ = _loc2_.tournamentAnimation1;
                                                      break loop6;
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                continue loop4;
                                                §§goto(addr107);
                                             }
                                          }
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          continue loop7;
                                       }
                                       return;
                                    }
                                    continue loop10;
                                 }
                                 addr145:
                              }
                              continue loop0;
                           }
                        }
                        addr167:
                     }
                     else
                     {
                        while(true)
                        {
                           _loc2_.tournamentAnimation2.visible = false;
                        }
                        addr192:
                     }
                     §§goto(addr196);
                  }
                  §§goto(addr188);
               }
            }
            §§goto(addr192);
         }
         §§goto(addr167);
      }
      
      protected function §-#F§(param1:MovieClip, param2:String) : int
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:FrameLabel = null;
         var _loc3_:Array = param1.currentLabels;
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.name.indexOf(param2) == 0)
            {
               if(_loc8_)
               {
                  return _loc4_.frame;
               }
            }
         }
         return 1;
      }
      
      override public function activate(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§[!j§ = null;
         if(_loc4_ || param1)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               this.§2#+§ = false;
               if(_loc4_)
               {
                  §@!m§(§,!q§.§>#D§).§ "g§.§""O§ = false;
                  loop1:
                  while(true)
                  {
                     §@!m§(§,!q§.§>#D§).§""s§.showTotalScores();
                     loop2:
                     while(true)
                     {
                        §§push(this.§?-§);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(§@"b§.§^o§);
                           while(true)
                           {
                              §§pop().addEventListener(§§pop(),this.§^X§);
                              if(_loc3_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           addr195:
                           _loc2_ = new TournamentResultsPopup(this.§?-§.lastResult,§`"W§.§+v§,§+5§.TOP);
                           if(_loc4_ || param1)
                           {
                              §4#;§.singleton.popupManager.openPopup(_loc2_,true,true,true);
                              addr226:
                              this.§?-§.§`"f§();
                              if(_loc4_ || param1)
                              {
                                 §@#B§(§4#;§.singleton.dataModel).§1!f§.§""i§();
                                 if(_loc4_)
                                 {
                                    if(false)
                                    {
                                       §§goto(addr226);
                                    }
                                    addr247:
                                    §§push(this.§?-§);
                                    break;
                                 }
                                 §§goto(addr226);
                                 addr237:
                              }
                              addr246:
                              §§goto(addr246);
                           }
                           §§goto(addr237);
                           addr130:
                        }
                        break;
                     }
                     addr249:
                     §§pop().§^!'§();
                     if(!_loc3_)
                     {
                        this.§'"f§();
                        addr252:
                        do
                        {
                           §§push(this);
                           §§push(this.§#F§);
                           if(!(_loc3_ && this))
                           {
                              §§push(!§§pop());
                           }
                           §§pop().§;!>§(§§pop());
                        }
                        while(_loc3_ && param1);
                        
                        addr290:
                        addr252:
                     }
                     §§goto(addr287);
                     while(true)
                     {
                        if(_loc4_ || param1)
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           loop5:
                           while(true)
                           {
                              §§push(this.§?-§);
                              if(_loc4_)
                              {
                                 §§push(§§pop().§!!e§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop7:
                                    while(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§push(this.§?-§);
                                             if(_loc4_)
                                             {
                                                §§push(§§pop().isLoading);
                                                if(_loc4_ || _loc2_)
                                                {
                                                   if(_loc3_ && _loc3_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   §§push(!§§pop());
                                                }
                                                if(!(_loc3_ && this))
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      break loop7;
                                                   }
                                                   continue loop6;
                                                }
                                                continue;
                                             }
                                             addr66:
                                             §§pop().reset();
                                             if(_loc4_ || _loc2_)
                                             {
                                                continue loop5;
                                             }
                                             §§goto(addr290);
                                          }
                                          break;
                                       }
                                       §§goto(addr252);
                                    }
                                    if(§§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          §§push(this.§?-§);
                                          if(_loc4_)
                                          {
                                             §§goto(addr66);
                                          }
                                          else
                                          {
                                             §§goto(addr249);
                                          }
                                       }
                                       §§goto(addr252);
                                    }
                                    else
                                    {
                                       §§push(this.§?-§);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§goto(addr186);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr249);
                           }
                           continue;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
               §§goto(addr252);
            }
         }
         §§goto(addr252);
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:Date = null;
         var _loc3_:Date = null;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         var _loc6_:§1t§ = null;
         var _loc7_:§[!j§ = null;
         if(_loc9_)
         {
            super.onTransitionComplete(param1);
            if(!_loc8_)
            {
               §§push(param1);
               if(_loc9_ || _loc2_)
               {
                  if(§§pop() == "in")
                  {
                     if(_loc9_ || this)
                     {
                        §§push(§@#B§(§4#;§.singleton.dataModel).§'R§);
                        if(_loc9_)
                        {
                           if(§§pop())
                           {
                              if(_loc9_ || param1)
                              {
                                 addr74:
                                 §§push(§@#B§(§4#;§.singleton.dataModel).§'R§);
                                 if(_loc9_ || _loc3_)
                                 {
                                    addr87:
                                    §§push(§§pop().id);
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       addr95:
                                       §§push(§§pop());
                                       if(_loc9_ || _loc2_)
                                       {
                                          §§push(_loc5_ = §§pop());
                                       }
                                    }
                                    if(§§pop().length > 0)
                                    {
                                       if(_loc9_ || this)
                                       {
                                          addr115:
                                          §§push(§4#;§.singleton);
                                          if(!_loc8_)
                                          {
                                             §§push(§§pop().dataModel);
                                             if(_loc9_)
                                             {
                                                §§push(§§pop().userProgress);
                                                if(!(_loc8_ && param1))
                                                {
                                                   §§push(_loc5_);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(§§pop().hasTutorialBeenSeen(§§pop()));
                                                      if(!_loc8_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               addr144:
                                                               §4#;§.singleton.dataModel.userProgress.saveTutorialSeen(_loc5_);
                                                               if(!_loc8_)
                                                               {
                                                                  addr153:
                                                                  _loc6_ = §@#B§(§4#;§.singleton.dataModel).§'R§;
                                                                  if(_loc9_)
                                                                  {
                                                                     §4#;§.singleton.popupManager.openPopup(new GenericMessagePopup(_loc6_.title,_loc6_.message,§`"W§.§+v§,§+5§.DEFAULT),true,true,true);
                                                                     addr174:
                                                                     if(§@#B§(§4#;§.singleton.dataModel).§6!G§.§#";§ > 0)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           addr185:
                                                                           addr187:
                                                                           if(this.§=#]§)
                                                                           {
                                                                              if(_loc9_ || _loc2_)
                                                                              {
                                                                                 addr195:
                                                                                 this.§=#]§ = false;
                                                                              }
                                                                           }
                                                                           addr219:
                                                                           _loc2_ = new Date();
                                                                           _loc3_ = new Date(_loc2_.fullYear,0,1);
                                                                           if(!(_loc8_ && param1))
                                                                           {
                                                                              _loc3_.date -= (_loc3_.day + 6) % 7;
                                                                              while(true)
                                                                              {
                                                                                 §§push(int(Math.floor((_loc2_.time - _loc3_.time) / (1000 * 60 * 60 * 24 * 7))));
                                                                                 loop1:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc9_ || this)
                                                                                    {
                                                                                       _loc4_ = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(2);
                                                                                       }
                                                                                       addr899:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() % §§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(0);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                             loop6:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                loop7:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc2_.day == 2);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               addr868:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        addr870:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc2_.day == 4);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr869:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr858:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        addr859:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 addr861:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc2_.day == 6);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr860:
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr807:
                                                                                                               if(!(_loc9_ || _loc2_))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc2_.day == 3);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     loop38:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        loop39:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc9_ || _loc3_))
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§pop();
                                                                                                                                    loop41:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc2_.day == 5);
                                                                                                                                       for(; _loc9_; if(!(_loc9_ || this))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       },if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr309);
                                                                                                                                       },§§goto(addr805))
                                                                                                                                       {
                                                                                                                                          loop43:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                §§push(_loc4_);
                                                                                                                                                loop44:
                                                                                                                                                while(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   §§push(2);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() % §§pop());
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() == §§pop());
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               loop49:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(_loc9_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc2_.day == 0);
                                                                                                                                                                           if(!(_loc8_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              while(!_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc9_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       addr671:
                                                                                                                                                                                       while(_loc9_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc2_.day == 3);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc8_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop38;
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                   while(!(_loc8_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr571:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this);
                                                                                                                                                                                                                              §§push(§8"3§.§`!v§);
                                                                                                                                                                                                                              §§push(1000 * 60);
                                                                                                                                                                                                                              if(!_loc8_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(60);
                                                                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr327);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr327);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr327);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr309:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr574);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr571:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr618);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop39;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr830);
                                                                                                                                                                                          §§goto(addr671);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr671:
                                                                                                                                                                                       addr829:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr608);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc8_ && _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop43;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr850);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr868);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop7;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop49;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr671);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        break loop43;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop41;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr571);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         continue loop44;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr498);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop1;
                                                                                                                                             }
                                                                                                                                             §§goto(addr723);
                                                                                                                                          }
                                                                                                                                          §§goto(addr327);
                                                                                                                                       }
                                                                                                                                       while(!_loc8_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr829);
                                                                                                                                          §§push(!§§pop());
                                                                                                                                       }
                                                                                                                                       §§goto(addr858);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr839:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr840);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop6;
                                                                                                                           }
                                                                                                                           §§goto(addr721);
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
                                                                                                      §§goto(addr839);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr600);
                                                                        }
                                                                        _loc7_ = new §"u§(§+!b§ as §[#;§,§`"W§.§+v§,§+5§.DEFAULT);
                                                                        if(!_loc8_)
                                                                        {
                                                                           §4#;§.singleton.popupManager.openPopup(_loc7_,true,true,true);
                                                                        }
                                                                     }
                                                                     §§goto(addr219);
                                                                  }
                                                                  §§goto(addr174);
                                                               }
                                                               §§goto(addr185);
                                                            }
                                                            §§goto(addr195);
                                                         }
                                                         §§goto(addr174);
                                                      }
                                                      §§goto(addr187);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr144);
                                    }
                                    §§goto(addr174);
                                 }
                                 §§goto(addr153);
                              }
                              §§goto(addr115);
                           }
                           §§goto(addr174);
                        }
                        §§goto(addr87);
                     }
                     §§goto(addr144);
                  }
                  addr327:
                  §§push(§§pop() * §§pop());
                  if(_loc9_)
                  {
                     §§push(12);
                  }
                  §§push(§§pop().§+"x§(§§pop(),§§pop()));
                  loop67:
                  while(true)
                  {
                     if(_loc9_)
                     {
                        if(!§§pop())
                        {
                           while(_loc9_)
                           {
                              if(!(_loc8_ && this))
                              {
                                 if(!_loc9_)
                                 {
                                    while(true)
                                    {
                                       if(!(_loc9_ || _loc2_))
                                       {
                                          continue loop58;
                                       }
                                       if(!(_loc8_ && param1))
                                       {
                                          continue loop0;
                                       }
                                       addr723:
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          §§push(this);
                                          §§push(§8"3§.§9#V§);
                                          §§push(1000 * 60);
                                          if(!(_loc8_ && _loc2_))
                                          {
                                             §§push(60);
                                             if(_loc9_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc8_)
                                                {
                                                   addr750:
                                                   §§push(§§pop() * 12);
                                                }
                                                §§push(§§pop().§+"x§(§§pop(),§§pop()));
                                                break loop50;
                                             }
                                          }
                                          §§goto(addr750);
                                       }
                                       else
                                       {
                                          §§goto(addr870);
                                       }
                                    }
                                    continue loop58;
                                    addr626:
                                 }
                                 if(!_loc8_)
                                 {
                                    §§push(§4#;§.singleton);
                                    if(_loc9_)
                                    {
                                       §§push(§§pop().popupManager);
                                       if(!(_loc8_ && _loc2_))
                                       {
                                          §§pop().openPopup(new §9"i§(§`"W§.§+v§,§+5§.DEFAULT,§9"i§.§%?§,true),true,true,true);
                                          continue loop51;
                                       }
                                    }
                                    else
                                    {
                                       addr762:
                                       §§push(§§pop().popupManager);
                                    }
                                    §§pop().openPopup(new §9"i§(§`"W§.§+v§,§+5§.DEFAULT,§9"i§.§<s§,true),true,true,true);
                                    addr776:
                                    if(_loc9_)
                                    {
                                       addr710:
                                       §@#B§(§4#;§.singleton.dataModel).§%!?§.§+#U§(§8"3§.§9#V§);
                                       addr711:
                                       if(_loc9_)
                                       {
                                          addr713:
                                          break loop43;
                                       }
                                       continue loop41;
                                       addr708:
                                    }
                                    continue loop9;
                                 }
                                 loop23:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    while(!_loc8_)
                                    {
                                       §§push(2);
                                       while(true)
                                       {
                                          §§push(§§pop() % §§pop());
                                          addr822:
                                          while(_loc9_)
                                          {
                                             §§push(0);
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                break loop42;
                                                addr540:
                                                if(_loc8_ && _loc3_)
                                                {
                                                   continue;
                                                }
                                                if(!_loc9_)
                                                {
                                                   continue loop5;
                                                }
                                                §§push(§§pop() == §§pop());
                                                if(!(_loc8_ && param1))
                                                {
                                                   §§push(!§§pop());
                                                }
                                                loop79:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop80:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(!_loc8_)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_.day == 2);
                                                                  loop73:
                                                                  for(; !_loc8_; while(true)
                                                                  {
                                                                     if(_loc8_ && this)
                                                                     {
                                                                        continue loop73;
                                                                     }
                                                                     if(_loc8_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc9_ || _loc2_))
                                                                           {
                                                                              continue loop50;
                                                                           }
                                                                           if(_loc9_ || _loc2_)
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§pop();
                                                                              continue loop36;
                                                                           }
                                                                        }
                                                                        continue loop8;
                                                                        addr574:
                                                                     }
                                                                     if(_loc8_ && _loc2_)
                                                                     {
                                                                        continue loop40;
                                                                     }
                                                                     if(!(_loc8_ && param1))
                                                                     {
                                                                        §§goto(addr405);
                                                                     }
                                                                     §§goto(addr869);
                                                                     §§goto(addr831);
                                                                  })
                                                                  {
                                                                     §§push(§§pop());
                                                                     loop74:
                                                                     while(true)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           if(_loc9_ || _loc2_)
                                                                           {
                                                                              if(!(_loc8_ && _loc2_))
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    loop75:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr484:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             break loop75;
                                                                                          }
                                                                                          if(_loc9_ || this)
                                                                                          {
                                                                                             §§push(_loc2_.day == 4);
                                                                                             continue loop73;
                                                                                          }
                                                                                          §§goto(addr861);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr776);
                                                                                    addr483:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          continue loop74;
                                                                                       }
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          continue loop80;
                                                                                       }
                                                                                       if(!(_loc9_ || _loc3_))
                                                                                       {
                                                                                          continue loop54;
                                                                                       }
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          continue loop52;
                                                                                       }
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc9_ || _loc2_)
                                                                                                {
                                                                                                   continue loop61;
                                                                                                }
                                                                                                continue loop79;
                                                                                             }
                                                                                             continue loop61;
                                                                                             addr423:
                                                                                          }
                                                                                          continue loop65;
                                                                                       }
                                                                                    }
                                                                                    addr405:
                                                                                 }
                                                                                 §§goto(addr859);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       continue loop43;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr832:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_.day == 0);
                                                                                          addr803:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             break loop74;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr830:
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop62;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           continue loop37;
                                                                        }
                                                                        while(_loc9_)
                                                                        {
                                                                           §§goto(addr807);
                                                                        }
                                                                        §§goto(addr860);
                                                                     }
                                                                  }
                                                                  continue loop57;
                                                               }
                                                               continue loop80;
                                                               addr565:
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop23;
                                                            }
                                                         }
                                                         continue loop59;
                                                         addr560:
                                                      }
                                                      continue loop65;
                                                   }
                                                }
                                             }
                                          }
                                          addr513:
                                          continue loop4;
                                          if(_loc8_ && this)
                                          {
                                             continue;
                                          }
                                          if(_loc8_ && param1)
                                          {
                                             continue loop3;
                                          }
                                          §§push(§§pop() % §§pop());
                                          if(_loc8_)
                                          {
                                             continue loop46;
                                          }
                                          if(_loc9_ || _loc2_)
                                          {
                                             §§push(0);
                                             if(!_loc9_)
                                             {
                                                continue loop47;
                                             }
                                             §§goto(addr540);
                                          }
                                          else
                                          {
                                             §§goto(addr822);
                                          }
                                       }
                                       if(!(_loc8_ && this))
                                       {
                                          continue loop45;
                                       }
                                    }
                                    §§goto(addr899);
                                 }
                              }
                              else
                              {
                                 §§goto(addr484);
                              }
                              §§goto(addr776);
                              if(!(_loc9_ || param1))
                              {
                                 continue;
                              }
                              if(!_loc9_)
                              {
                                 continue loop66;
                              }
                              if(_loc9_ || param1)
                              {
                                 if(true)
                                 {
                                    break loop67;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc2_.day == 6);
                                    if(!_loc9_)
                                    {
                                       break;
                                    }
                                    if(!_loc8_)
                                    {
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          if(!_loc8_)
                                          {
                                             if(_loc9_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   continue loop42;
                                                }
                                                addr618:
                                                while(!(_loc8_ && _loc2_))
                                                {
                                                   §§pop();
                                                   §§goto(addr626);
                                                }
                                                continue loop48;
                                             }
                                             §§goto(addr560);
                                             §§goto(addr850);
                                          }
                                          §§goto(addr483);
                                       }
                                       §§goto(addr382);
                                    }
                                    §§goto(addr423);
                                    addr447:
                                 }
                                 continue loop67;
                              }
                              §§goto(addr711);
                           }
                           while(true)
                           {
                              if(_loc9_ || _loc2_)
                              {
                                 if(!_loc9_)
                                 {
                                    continue loop36;
                                 }
                                 §§goto(addr447);
                              }
                              §§goto(addr565);
                           }
                           addr438:
                        }
                        break;
                     }
                     §§goto(addr803);
                  }
                  return;
               }
               §§goto(addr95);
            }
            §§goto(addr185);
         }
         §§goto(addr74);
      }
      
      private function §+"x§(param1:String, param2:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§@#B§(§4#;§.singleton.dataModel).§%!?§.§5">§(param1));
         if(!(_loc5_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc4_ || param1)
                  {
                     §§push(false);
                  }
                  else
                  {
                     loop2:
                     while(true)
                     {
                        addr58:
                        while(true)
                        {
                           §§push(new Date().time - _loc3_);
                           if(_loc4_)
                           {
                              if(§§pop() >= param2)
                              {
                                 break;
                              }
                              if(_loc5_)
                              {
                                 break;
                              }
                              if(_loc4_ || _loc3_)
                              {
                                 §§goto(addr78);
                              }
                              continue loop2;
                           }
                           continue loop0;
                        }
                        §§push(false);
                        if(!(_loc5_ && _loc3_))
                        {
                           return §§pop();
                        }
                        addr78:
                        §§push(true);
                        if(!_loc5_)
                        {
                           return §§pop();
                        }
                        §§goto(addr102);
                     }
                     addr103:
                  }
                  addr102:
                  return §§pop();
               }
               §§goto(addr58);
            }
         }
         §§goto(addr103);
      }
      
      private function §^X§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§'"f§();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§2#+§ = false;
         }
         while(true)
         {
            §§push(this.§?-§);
            loop1:
            while(true)
            {
               §§push(§@"b§.§^o§);
               addr76:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§^X§);
                  continue loop1;
               }
            }
         }
      }
      
      private function §'"f§() : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc2_:§@#B§ = null;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:§]"V§ = null;
         var _loc9_:String = null;
         var _loc10_:§4#G§ = null;
         var _loc1_:MovieClip = §@;§.getItemByName("Button_Tournaments").mClip.tournamentInfo;
         if(!_loc14_)
         {
            if(this.§?-§.isLoading)
            {
               if(!(_loc14_ && this))
               {
                  addr59:
                  _loc1_.txtRank.text = "-";
                  if(_loc13_ || this)
                  {
                     addr70:
                     _loc1_.txtStars.text = "-";
                  }
                  §§goto(addr365);
               }
               §§goto(addr70);
            }
            else
            {
               _loc2_ = §@#B§(§4#;§.singleton.dataModel);
               if(!(_loc14_ && _loc2_))
               {
                  §§push(_loc2_.§9!N§.id);
                  if(_loc13_ || _loc2_)
                  {
                     §§push(§§pop());
                  }
                  _loc3_ = §§pop();
               }
               loop0:
               while(true)
               {
                  §§push(0);
                  loop1:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     addr141:
                     while(_loc13_)
                     {
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
            addr365:
            return;
         }
         §§goto(addr59);
      }
      
      private function §;!>§(param1:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MovieClip = §@;§.getItemByName("Button_Tournaments").mClip;
         if(_loc3_ || _loc2_)
         {
            _loc2_.gotoAndStop(!!param1 ? "locked" : "unlocked");
            do
            {
               §§push(§@;§.getItemByName("Button_Tournaments") as §1"z§);
               if(_loc3_)
               {
                  if(!param1)
                  {
                     §§push(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     if(!(_loc4_ && param1))
                     {
                        §§push(§§pop());
                     }
                     continue;
                  }
               }
               §§push(§1"z§.COMPONENT_STATE_DISABLED);
               if(_loc3_)
               {
                  §§push(§§pop());
                  if(!(_loc3_ || _loc2_))
                  {
                     continue;
                  }
               }
            }
            while(§§pop().setComponentState(§§pop()), do
            {
               _loc2_.mouseEnabled = !param1;
            }
            while(_loc4_);
            , !_loc3_);
            
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || param2)
         {
            if("SHOP" === _loc4_)
            {
               if(!(_loc5_ && param2))
               {
                  §§push(0);
                  if(_loc6_ || param1)
                  {
                  }
                  §§goto(addr200);
               }
               else
               {
                  §§goto(addr156);
               }
            }
            else
            {
               if("TOURNAMENTS" === _loc4_)
               {
                  if(!_loc5_)
                  {
                     addr156:
                     §§push(1);
                     if(!(_loc6_ || param2))
                     {
                        addr195:
                     }
                  }
               }
               else if("TOURNAMENTS_OVER" === _loc4_)
               {
                  if(_loc6_ || param2)
                  {
                     addr175:
                     §§push(2);
                     if(!_loc6_)
                     {
                     }
                  }
               }
               else if("TOURNAMENTS_OUT" !== _loc4_)
               {
                  addr200:
                  switch(§§pop())
                  {
                     case 0:
                        §?!r§.§"#_§("misc_menubuttonproceed_1");
                        §9#B§(§4#;§.singleton.popupManager).§@"3§();
                        addr115:
                        break;
                        addr115:
                        addr121:
                     case 1:
                        addr91:
                        if(this.§#F§)
                        {
                           §?!r§.§"#_§("misc_menubuttonproceed_1");
                           addr105:
                           if(!_loc5_)
                           {
                              § g§(§6!W§.§^!7§,true);
                              addr85:
                           }
                           else
                           {
                              §§goto(addr115);
                           }
                           addr92:
                        }
                        break;
                     case 2:
                        §§push(this.§#F§);
                        if(!_loc5_)
                        {
                           if(§§pop())
                           {
                              addr64:
                              if(_loc6_)
                              {
                                 if(!_loc5_)
                                 {
                                    this.§2#+§ = true;
                                    if(_loc6_ || param2)
                                    {
                                       this.§&!W§();
                                       addr36:
                                       break;
                                       addr55:
                                    }
                                    break;
                                 }
                                 §§goto(addr121);
                              }
                              else
                              {
                                 §§goto(addr92);
                              }
                              §§goto(addr115);
                           }
                           §§goto(addr36);
                        }
                        else
                        {
                           §§goto(addr91);
                        }
                     case 3:
                        this.§2#+§ = false;
                        addr42:
                        if(_loc6_)
                        {
                           if(!(_loc5_ && param3))
                           {
                              break;
                           }
                           §§goto(addr85);
                        }
                        else
                        {
                           §§goto(addr55);
                        }
                        break;
                     default:
                        super.onUIInteraction(param1,param2,param3);
                        if(!_loc5_)
                        {
                           if(!_loc5_)
                           {
                              if(!_loc5_)
                              {
                                 if(_loc6_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    §§goto(addr36);
                                 }
                              }
                              else
                              {
                                 §§goto(addr64);
                              }
                              §§goto(addr105);
                           }
                           else
                           {
                              §§goto(addr42);
                           }
                        }
                  }
                  return;
                  §§push(4);
               }
               §§goto(addr200);
               if(!_loc5_)
               {
                  §§goto(addr195);
               }
            }
            §§goto(addr200);
         }
         §§goto(addr175);
      }
      
      override protected function navigateToToons() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§4#;§.singleton);
            if(!_loc1_)
            {
               if(§§pop().§>!Z§())
               {
                  if(!_loc1_)
                  {
                     addr64:
                     §4#;§.singleton.§5"q§();
                     addr65:
                     while(true)
                     {
                     }
                     addr65:
                  }
                  §§goto(addr65);
               }
               while(true)
               {
                  navigateToURL(new URLRequest(§@U§),"_blank");
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr65);
               }
               return;
            }
         }
         §§goto(addr64);
      }
      
      override protected function navigateToFriends() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:FriendsPromoPopup = new FriendsPromoPopup(§`"W§.§+v§,§+5§.TOP);
         if(_loc2_)
         {
            §4#;§.singleton.popupManager.openPopup(_loc1_,true,true,true);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super.update(param1);
         }
         do
         {
            this.§&!W§();
         }
         while(_loc2_ && _loc2_);
         
      }
      
      private function get §#F§() : Boolean
      {
         return §7q§(§4#;§.singleton.dataModel.userProgress).§#F§;
      }
      
      private function §&!W§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§2#+§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc1_ && this))
               {
                  if(!§§pop())
                  {
                     loop1:
                     for(; §§pop(); continue loop0)
                     {
                        if(!_loc1_)
                        {
                           while(true)
                           {
                              this.§1"i§.gotoAndPlay(§ "B§);
                           }
                           addr56:
                        }
                        while(true)
                        {
                           if(_loc2_)
                           {
                              break loop1;
                           }
                           loop2:
                           while(true)
                           {
                              §§push(this.§1"i§.currentFrame == this.§>";§ - 2);
                              if(_loc2_)
                              {
                                 break;
                              }
                              addr85:
                              while(true)
                              {
                                 §§pop();
                                 continue loop2;
                              }
                           }
                           continue loop1;
                        }
                     }
                     return;
                     addr52:
                  }
               }
               §§goto(addr85);
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               §§goto(addr52);
            }
         }
         §§goto(addr56);
      }
      
      private function loadLevel(param1:String = "") : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(param1.length <= 0)
            {
               loop0:
               while(true)
               {
                  this.§!!v§ = new FileReference();
                  loop1:
                  while(true)
                  {
                     if(!(_loc2_ || _loc2_))
                     {
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                           addr120:
                           §+!b§.loadLevel(param1);
                           §§goto(addr123);
                        }
                        break;
                     }
                     while(true)
                     {
                        this.§!!v§.addEventListener(Event.SELECT,this.§0!%§);
                        do
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              if(!_loc3_)
                              {
                                 if(_loc3_ && this)
                                 {
                                    § g§(StateCutScene.§^!7§);
                                 }
                                 else
                                 {
                                    addr123:
                                 }
                                 continue;
                                 break loop1;
                              }
                              return;
                              addr99:
                           }
                           continue loop1;
                        }
                        while(this.§!!v§.browse([new FileFilter("Level files","*.lua")]), !_loc2_);
                        
                        return;
                     }
                     §§goto(addr123);
                  }
                  §6"k§.§@!1§ = true;
                  §§goto(addr99);
               }
            }
            §§goto(addr120);
         }
         §§goto(addr87);
      }
      
      private function §0!%§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§!!v§.addEventListener(Event.COMPLETE,this.onComplete);
         }
         do
         {
            this.§!!v§.load();
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            DConsole.hide();
            loop0:
            while(true)
            {
               §[#;§(§+!b§).§<"s§(this.§!!v§.data.toString());
               while(true)
               {
                  §+!b§.loadLevel("-1");
                  loop2:
                  while(_loc2_ || _loc3_)
                  {
                     § g§(StateCutScene.§^!7§);
                     while(true)
                     {
                        §6"k§.§@!1§ = true;
                        loop4:
                        while(_loc2_ || _loc3_)
                        {
                           while(true)
                           {
                              §+"k§.§-!w§ = this.§-!w§;
                              if(_loc2_ || _loc3_)
                              {
                                 if(_loc2_)
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      private function §-!w§(param1:Error) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            Logging.§,S§(§@!m§).error(param1.name,param1.message);
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(param1.keyCode == Keyboard.T)
            {
               if(!(_loc3_ && _loc2_))
               {
                  §+!b§.selectEpisode(4);
                  do
                  {
                     § g§(§+#?§.§^!7§,true);
                     do
                     {
                        §6"k§.§@!1§ = true;
                     }
                     while(_loc3_);
                     
                  }
                  while(!(_loc2_ || this));
                  
                  addr84:
               }
               §§goto(addr84);
            }
            return;
         }
         §§goto(addr84);
      }
   }
}
