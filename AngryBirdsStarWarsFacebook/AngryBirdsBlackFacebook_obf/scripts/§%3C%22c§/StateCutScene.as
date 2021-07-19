package §<"c§
{
   import §&#H§.§3#J§;
   import §2"a§.§9#L§;
   import §2"a§.§9E§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §7!F§.§1x§;
   import §7!F§.§7§;
   import §;"Y§.§&#X§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import com.angrybirds.§,!q§;
   import flash.events.Event;
   
   public class StateCutScene extends §]"_§
   {
      
      public static const §^!7§:String = "StateCutScene";
      
      private static const §?V§:Number = 500;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || StateCutScene)
         {
            §^!7§ = "StateCutScene";
         }
         do
         {
            §?V§ = 500;
         }
         while(_loc1_ && StateCutScene);
         
      }
      
      protected var §^!W§:§9E§;
      
      protected var §7#Y§:Boolean;
      
      private var §!"d§:Number = 0;
      
      private var §5!>§:Number = 0;
      
      protected var §22§:§1x§;
      
      public function StateCutScene(param1:§+"2§, param2:§5"H§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            super(param1,param3,param4,param2);
         }
      }
      
      protected function get §9!'§() : §9E§
      {
         return this.§^!W§;
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
         }
         do
         {
            §@;§ = new §]#[§(this);
            do
            {
               §@;§.init(§&$§.§@8§.Views.View_CutScene[0]);
            }
            while(_loc2_);
            
         }
         while(_loc2_);
         
      }
      
      protected function §3#[§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(param1)
            {
               if(!_loc2_)
               {
                  §§push(this.§22§);
                  loop0:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.startCutScene();
                        break;
                     }
                     if(_loc3_)
                     {
                        §@;§.getItemByName("MovieClip_Loading").setVisibility(true);
                        addr174:
                        while(true)
                        {
                           §§push(this.§22§);
                           continue loop0;
                           loop7:
                           for(; _loc3_ || _loc3_; while(!(_loc2_ && _loc3_))
                           {
                              this.§1L§(param1);
                              if(!_loc3_)
                              {
                                 continue;
                              }
                              §§goto(addr57);
                           })
                           {
                              addr115:
                              §§push(this.§22§);
                              if(_loc3_ || _loc3_)
                              {
                                 §§pop().addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                                 continue;
                              }
                              addr119:
                              while(_loc3_)
                              {
                                 §§pop().addEventListener(Event.COMPLETE,this.§2%§);
                                 continue loop7;
                                 §§goto(addr115);
                              }
                              loop4:
                              while(_loc3_ || _loc2_)
                              {
                                 §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                                 while(!_loc2_)
                                 {
                                    §§goto(addr101);
                                    §§push(this.§22§);
                                    if(_loc3_ || _loc3_)
                                    {
                                       break loop0;
                                    }
                                 }
                                 while(true)
                                 {
                                    continue loop4;
                                 }
                              }
                              addr101:
                              continue loop0;
                           }
                        }
                        addr174:
                     }
                     §§goto(addr174);
                  }
                  §§push(true);
               }
               §§goto(addr174);
            }
            else
            {
               §§push(false);
               if(_loc3_ || param1)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr174);
      }
      
      protected function §1L§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§22§.§'!t§("cutscene_" + param1);
         }
      }
      
      protected function §2%§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§22§);
            if(_loc2_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr96:
                     §§push(this.§22§);
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§2%§);
                     }
                     addr96:
                  }
                  while(true)
                  {
                     §§push(this.§22§);
                     if(!(_loc3_ && param1))
                     {
                        §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                        do
                        {
                           this.startCutScene();
                        }
                        while(!(_loc2_ || _loc2_));
                        
                        if(!(_loc3_ && _loc2_))
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr96);
                  }
                  addr55:
               }
               return;
            }
            §§goto(addr96);
         }
         §§goto(addr55);
      }
      
      protected function startCutScene() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §@;§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
         §§push(this.getCutSceneName());
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§7#5§ = §7#5§.§%!E§;
         if(!_loc3_)
         {
            §§push(this.§22§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr45:
                     _loc2_ = this.§22§.textureManager;
                     addr48:
                     this.§^!W§ = §9#L§.§1q§(_loc1_,_loc2_);
                     if(_loc4_)
                     {
                        §§push(this.§^!W§);
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §4#;§.singleton.dataModel.userProgress.§8"W§(_loc1_);
                                 addr160:
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§,!q§.§9!,§);
                                    while(true)
                                    {
                                       §§push(true);
                                       loop8:
                                       while(true)
                                       {
                                          §§pop().§]"J§(§§pop());
                                          addr140:
                                          while(true)
                                          {
                                             §§push(§,!q§.§9!,§);
                                             loop1:
                                             while(true)
                                             {
                                                §§push(false);
                                                if(_loc3_ && _loc1_)
                                                {
                                                   continue loop8;
                                                }
                                                §§pop().§--§(§§pop());
                                                while(true)
                                                {
                                                   §§push(this.§^!W§);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§pop().update(0);
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop6;
                                                      addr119:
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                             continue loop8;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr57);
                        }
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr140);
               }
               §§goto(addr48);
            }
            §§goto(addr45);
         }
         §§goto(addr160);
      }
      
      protected function onCutSceneNotAvailable(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§22§);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  addr79:
                  while(true)
                  {
                     §§push(this.§22§);
                     addr81:
                     loop3:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§2%§);
                        addr86:
                        addr51:
                        addr56:
                        while(true)
                        {
                           §§push(this.§22§);
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                        addr58:
                        while(_loc3_)
                        {
                           §§goto(addr86);
                           §§goto(addr51);
                        }
                     }
                  }
                  addr79:
               }
               while(true)
               {
                  this.end();
                  if(!(_loc3_ && _loc2_))
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr56);
                  §§goto(addr58);
               }
               return;
            }
            §§goto(addr81);
         }
         §§goto(addr79);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               §§push(§,!q§.§9!,§);
               while(true)
               {
                  §§pop().clearLevel();
                  loop2:
                  while(true)
                  {
                     §§push(§,!q§.§9!,§);
                     if(!(_loc3_ || this))
                     {
                        break;
                     }
                     §§pop().§]"J§(false);
                     loop3:
                     while(true)
                     {
                        if(!this.§22§)
                        {
                           loop4:
                           while(true)
                           {
                              this.§22§ = §,!q§.§9!,§.§ =§;
                              addr153:
                              while(true)
                              {
                              }
                              loop9:
                              while(true)
                              {
                                 if(!(_loc3_ || param1))
                                 {
                                    continue loop4;
                                 }
                                 this.§5!>§ = 0;
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       break loop9;
                                    }
                                    §@;§.getItemByName("Button_Skip").setVisibility(false);
                                    loop11:
                                    for(; !_loc4_; if(_loc4_ && _loc2_)
                                    {
                                       continue;
                                    },§§goto(addr50))
                                    {
                                       if(_loc3_)
                                       {
                                          §@;§.getItemByName("Button_Skip").mClip.alpha = this.§!"d§;
                                          loop12:
                                          while(_loc3_)
                                          {
                                             this.stopThemeMusic();
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   continue loop11;
                                                }
                                                continue loop12;
                                                addr32:
                                                if(!(_loc3_ || this))
                                                {
                                                   continue;
                                                }
                                                if(_loc4_ && this)
                                                {
                                                   continue loop9;
                                                }
                                                if(!_loc4_)
                                                {
                                                   if(false)
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         this.§7#Y§ = false;
                                                         while(_loc3_)
                                                         {
                                                            §@;§.getItemByName("MovieClip_Loading").setVisibility(false);
                                                            if(!_loc3_)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr32);
                                                         }
                                                         addr136:
                                                         while(!(_loc4_ && _loc2_))
                                                         {
                                                            while(true)
                                                            {
                                                               addr109:
                                                               while(true)
                                                               {
                                                                  this.§!"d§ = 0;
                                                                  break loop14;
                                                               }
                                                            }
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop9;
                                                      addr50:
                                                   }
                                                   §§push(this.getCutSceneName());
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   var _loc2_:* = §§pop();
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      if(!this.§3#[§(_loc2_))
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            addr205:
                                                            this.end();
                                                         }
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr205);
                                                }
                                                §§goto(addr153);
                                             }
                                             continue loop11;
                                          }
                                          continue loop0;
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                              addr132:
                              while(true)
                              {
                                 §§push(§3#J§.§2!C§);
                                 addr134:
                                 while(true)
                                 {
                                    §§pop().color = 0;
                                    §§goto(addr136);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(§3#J§.§2!C§);
                           if(_loc3_ || _loc2_)
                           {
                              if(§§pop())
                              {
                                 §§goto(addr132);
                              }
                              §§goto(addr109);
                           }
                           §§goto(addr134);
                           §§goto(addr153);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr143);
      }
      
      protected function stopThemeMusic() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §4#;§.singleton.stopThemeMusic();
         }
      }
      
      protected function getCutSceneName() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = §+!b§.previousLevel;
         var _loc2_:* = §+!b§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-OUTRO");
         if(!_loc3_)
         {
            §§push(_loc2_);
            do
            {
               if(!§§pop())
               {
                  loop5:
                  while(true)
                  {
                     §§push(§+!b§.currentLevel);
                     addr102:
                     while(true)
                     {
                        _loc1_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(§+!b§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-INTRO"));
                           addr71:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    break;
                                 }
                                 continue loop5;
                              }
                              continue loop3;
                           }
                        }
                        continue loop5;
                     }
                  }
                  addr99:
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc4_ || _loc1_)
                  {
                     if(_loc4_)
                     {
                        break;
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr71);
               }
            }
            while(_loc3_ && _loc2_);
            
            return §§pop();
         }
         §§goto(addr99);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§^!W§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop5:
                  while(true)
                  {
                     §§push(this.§22§);
                     if(_loc1_ || this)
                     {
                        if(§§pop())
                        {
                           loop6:
                           while(_loc1_)
                           {
                              §§push(this.§22§);
                              loop11:
                              while(true)
                              {
                                 §§pop().removeEventListener(Event.COMPLETE,this.§2%§);
                                 addr115:
                                 while(true)
                                 {
                                    §§push(this.§22§);
                                    if(_loc2_)
                                    {
                                       continue loop11;
                                    }
                                    §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                                    while(_loc2_)
                                    {
                                       continue loop6;
                                    }
                                    continue loop11;
                                 }
                              }
                           }
                           continue;
                        }
                        loop7:
                        while(true)
                        {
                           §§push(§,!q§.§9!,§);
                           if(!(_loc1_ || _loc1_))
                           {
                              break;
                           }
                           §§pop().§--§(true);
                           for(; _loc1_ || _loc2_; super.deActivate(),if(!_loc1_)
                           {
                              continue;
                           },if(_loc1_ || _loc1_)
                           {
                              if(_loc1_ || this)
                              {
                                 addr42:
                                 if(_loc1_ || _loc2_)
                                 {
                                    return;
                                 }
                                 addr132:
                                 while(true)
                                 {
                                    this.§^!W§ = null;
                                    continue loop5;
                                    §§goto(addr42);
                                 }
                              }
                              else
                              {
                                 §§goto(addr115);
                              }
                           },§§goto(addr92))
                           {
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              addr146:
                              while(true)
                              {
                                 §§push(§,!q§.§9!,§);
                                 break loop7;
                              }
                           }
                           continue loop0;
                           §§goto(addr92);
                        }
                        while(true)
                        {
                           §§pop().§!h§.removeChild(this.§^!W§.sprite);
                           continue loop0;
                        }
                     }
                     §§goto(addr110);
                  }
               }
               §§goto(addr146);
            }
         }
         §§goto(addr120);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            if("SKIP" !== _loc4_)
            {
               if("FULLSCREEN_BUTTON" === _loc4_)
               {
                  §§goto(addr69);
               }
               else
               {
                  §§push(2);
               }
               addr92:
               switch(§§pop())
               {
                  case 0:
                     this.§7#Y§ = true;
                     if(_loc5_)
                     {
                        break;
                     }
                     break;
                  case 1:
                     §4#;§.singleton.§5"q§();
                     if(_loc5_ || param3)
                     {
                        break;
                     }
               }
               return;
            }
            if(!(_loc6_ && this))
            {
               §§push(0);
               if(_loc6_)
               {
                  addr87:
               }
            }
            else
            {
               addr69:
               §§push(1);
               if(_loc5_ || param3)
               {
                  §§goto(addr87);
               }
            }
            §§goto(addr92);
         }
         §§goto(addr69);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§5!>§);
            loop0:
            while(true)
            {
               if(§§pop() <= §?V§)
               {
                  §§push(this);
                  §§push(this.§5!>§);
                  if(_loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§5!>§ = §§pop();
                  loop1:
                  while(true)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§7#Y§);
                           if(!(_loc2_ && _loc3_))
                           {
                              §§push(Boolean(§§pop()));
                              loop3:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop4:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          §§pop();
                                          loop10:
                                          while(_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                §§push(this.§^!W§);
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         loop8:
                                                         while(true)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               addr98:
                                                               loop6:
                                                               for(; _loc3_; §§goto(addr98))
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(this.§^!W§);
                                                                     if(_loc2_ && param1)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     §§push(§§pop().update(param1));
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           if(!_loc2_)
                                                                           {
                                                                              addr58:
                                                                              if(_loc2_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                           if(_loc3_)
                                                                           {
                                                                              while(§§pop())
                                                                              {
                                                                                 if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    if(_loc2_ && _loc3_)
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       this.end();
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       addr169:
                                                                                    }
                                                                                 }
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                              return;
                                                                              addr64:
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                     §§goto(addr58);
                                                                  }
                                                               }
                                                               §§pop();
                                                               continue loop0;
                                                            }
                                                            continue loop11;
                                                         }
                                                      }
                                                      §§goto(addr64);
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                             else
                                             {
                                                addr217:
                                                while(true)
                                                {
                                                   §@;§.getItemByName("Button_Skip").setVisibility(true);
                                                }
                                                addr217:
                                             }
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§!"d§);
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   §§push(param1);
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      §§push(§§pop() / 1000);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§pop().§!"d§ = §§pop();
                                                addr202:
                                                while(true)
                                                {
                                                   §@;§.getItemByName("Button_Skip").mClip.alpha = this.§!"d§;
                                                   continue loop0;
                                                }
                                             }
                                          }
                                          continue loop1;
                                       }
                                       addr127:
                                    }
                                    §§goto(addr64);
                                 }
                              }
                           }
                           §§goto(addr127);
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           if(_loc3_)
                           {
                              this.§!"d§ = 1;
                              §§goto(addr169);
                           }
                        }
                        addr164:
                     }
                     §§goto(addr202);
                  }
               }
               §§goto(addr217);
            }
            addr215:
         }
         while(true)
         {
            §§push(this.§!"d§);
            if(!(_loc2_ && param1))
            {
               if(§§pop() > 1)
               {
                  §§goto(addr164);
               }
               §§goto(addr133);
            }
            else
            {
               §§goto(addr215);
            }
         }
      }
      
      protected function end() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§22§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop4:
                  while(true)
                  {
                     §§push(this.§^!W§);
                     loop5:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop6:
                        while(true)
                        {
                           §§push(§§pop());
                           loop7:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop8:
                                 while(true)
                                 {
                                    §§pop();
                                    loop9:
                                    while(_loc2_)
                                    {
                                       §§push(this.§^!W§);
                                       loop10:
                                       while(_loc2_ || _loc2_)
                                       {
                                          §§push(§§pop().§""Y§);
                                          while(true)
                                          {
                                             §§push(§9E§.§#'§);
                                             addr171:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                             }
                                             addr53:
                                             §§push(§§pop().§""Y§);
                                             if(_loc1_ && _loc1_)
                                             {
                                                continue;
                                             }
                                             §§push(§9E§.§2!T§);
                                             if(_loc2_)
                                             {
                                                addr65:
                                                §§push(§§pop() == §§pop());
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      loop19:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc1_ && _loc1_))
                                                            {
                                                               § g§(§`!O§.§^!7§);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            this.§ set§();
                                                            if(!_loc2_)
                                                            {
                                                               addr88:
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  if(_loc1_ && _loc2_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  if(!(_loc1_ && _loc2_))
                                                                  {
                                                                     if(!_loc1_)
                                                                     {
                                                                        §§push(this.§^!W§);
                                                                        if(_loc2_)
                                                                        {
                                                                           if(_loc1_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr53);
                                                                        }
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           addr119:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc1_)
                                                                              {
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                                 §§push(§§pop());
                                                                                 if(!(_loc2_ || this))
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    continue loop19;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    continue loop18;
                                                                                    §§goto(addr65);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(!§§pop())
                                                                                 {
                                                                                    §§push(this.§^!W§);
                                                                                    continue loop15;
                                                                                 }
                                                                                 §§goto(addr174);
                                                                                 addr173:
                                                                              }
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        addr151:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§22§);
                                                                           addr222:
                                                                           while(true)
                                                                           {
                                                                              §§pop().removeEventListener(Event.COMPLETE,this.§2%§);
                                                                           }
                                                                        }
                                                                        addr220:
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§22§);
                                                                     if(!_loc2_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr222);
                                                               }
                                                               continue loop10;
                                                            }
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  addr174:
                                                                  §+#?§.§'"6§ = StateCutScene.§^!7§;
                                                                  § g§(§+#?§.§^!7§);
                                                                  addr178:
                                                                  addr157:
                                                               }
                                                               §§goto(addr25);
                                                            }
                                                            §§goto(addr178);
                                                            §§goto(addr174);
                                                         }
                                                         §§goto(addr88);
                                                      }
                                                      if(!(_loc2_ || this))
                                                      {
                                                         §§goto(addr157);
                                                      }
                                                      addr25:
                                                      return;
                                                   }
                                                   §§goto(addr119);
                                                }
                                                §§goto(addr134);
                                             }
                                             §§goto(addr171);
                                          }
                                       }
                                       continue loop5;
                                    }
                                    continue loop4;
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr173);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr220);
            }
         }
         §§goto(addr206);
      }
      
      protected function § set§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:String = §+!b§.currentLevel;
         if(_loc3_ || _loc1_)
         {
            if(!_loc1_)
            {
               § g§(this.stateOnDefaultEnd);
               if(_loc3_ || _loc1_)
               {
                  if(!(_loc3_ || _loc3_))
                  {
                     addr77:
                     § g§(this.getLevelLoadState());
                     addr81:
                  }
                  else
                  {
                     addr74:
                  }
                  return;
               }
               §§goto(addr81);
            }
            §§goto(addr77);
         }
         §§goto(addr74);
      }
      
      protected function get stateOnDefaultEnd() : String
      {
         return §+#?§.§^!7§;
      }
      
      protected function getLevelLoadState() : String
      {
         return §<2§.§^!7§;
      }
   }
}
