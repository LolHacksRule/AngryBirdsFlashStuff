package
{
   import § §.§3Q§;
   import §,"N§.§'#E§;
   import §,"N§.§0#F§;
   import §0!=§.§'"]§;
   import §1!i§.§1"9§;
   import §1!i§.§7#&§;
   import §2"Y§.§"#`§;
   import §2"Y§.§,§;
   import §2"Y§.§>"X§;
   import §5t§.§>"p§;
   import §5t§.§]"Y§;
   import §69§.§!!u§;
   import §69§.§4!y§;
   import §<"c§.§ §;
   import §<"c§.§""o§;
   import §<"c§.§"C§;
   import §<"c§.§&"3§;
   import §<"c§.§+!n§;
   import §<"c§.§1#"§;
   import §<"c§.§3>§;
   import §<"c§.§6"a§;
   import §<"c§.§7"i§;
   import §<"c§.§9§;
   import §<"c§.§9U§;
   import §<"c§.§`!O§;
   import §?m§.§+"2§;
   import §?m§.§,"X§;
   import §^#>§.§#_§;
   import §^#>§.§'6§;
   import com.rovio.assets.LoadingScreenBlack;
   import flash.display.DisplayObjectContainer;
   
   public class § C§ extends §4#;§
   {
      
      protected static var §#!2§:Class;
      
      protected static var §?#J§:Class;
      
      protected static var §0"j§:Class;
      
      protected static var §3m§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §#!2§ = §]!S§;
         }
         loop0:
         while(true)
         {
            §?#J§ = §<"J§;
            do
            {
               §0"j§ = §&3§;
               continue loop0;
            }
            while(_loc1_);
            
            return;
         }
      }
      
      protected var §"!j§:§4!y§;
      
      public function § C§(param1:§'"]§, param2:String, param3:String)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      override protected function initStateLoad() : §3Q§
      {
         return new §1#"§(§4#,§,true,§3Q§.§^!7§,1000,stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initializeStates() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §7![§(new §9#5§(§+!b§,§>"X§(§?4§),§4#,§,false));
         }
         loop0:
         while(true)
         {
            §7![§(new §+!n§(§+!b§,§4#,§,false));
            loop1:
            while(true)
            {
               §7![§(new §9U§(§+!b§,§4#,§,false));
               loop2:
               while(true)
               {
                  §7![§(new §3>§(§+!b§,§4#,§,false));
                  loop3:
                  while(true)
                  {
                     §7![§(new §6"a§(§+!b§,§4#,§,false));
                     loop4:
                     while(true)
                     {
                        §7![§(new §""o§(§+!b§,§4#,§,false));
                        loop5:
                        while(true)
                        {
                           §7![§(new § #4§(§+!b§,§4#,§,false));
                           while(true)
                           {
                              §7![§(new §7"i§(§+!b§,§4#,§,false));
                              loop7:
                              while(_loc2_)
                              {
                                 §7![§(new §&"3§(§+!b§,§4#,§,false));
                                 loop8:
                                 while(_loc2_)
                                 {
                                    continue loop4;
                                    loop11:
                                    while(true)
                                    {
                                       if(!(_loc2_ || _loc2_))
                                       {
                                          continue loop8;
                                       }
                                       if(_loc1_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(stage.stageHeight == screenHeight);
                                       if(!_loc1_)
                                       {
                                          addr31:
                                          if(_loc2_ || _loc1_)
                                          {
                                             §§push(!§§pop());
                                             while(true)
                                             {
                                             }
                                             addr39:
                                          }
                                          else
                                          {
                                             addr89:
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop11;
                                                §§goto(addr31);
                                             }
                                             addr89:
                                          }
                                       }
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             break loop11;
                                          }
                                          if(!(_loc1_ && _loc1_))
                                          {
                                             if(!_loc1_)
                                             {
                                                if(_loc2_)
                                                {
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   continue loop7;
                                                   continue loop7;
                                                }
                                                continue loop2;
                                             }
                                             continue loop11;
                                          }
                                          addr69:
                                          if(!_loc1_)
                                          {
                                             break loop11;
                                          }
                                          continue loop1;
                                       }
                                    }
                                    return;
                                 }
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      override protected function initializeLevelItemManager() : §,#5§
      {
         return new §"#`§();
      }
      
      override protected function initializeLevelThemeManager() : §!!u§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§"!j§);
            if(!(_loc1_ && _loc1_))
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     this.§"!j§ = new §4!y§();
                     addr60:
                     §§push(this.§"!j§);
                  }
               }
               §§goto(addr60);
            }
            return §§pop();
         }
         §§goto(addr60);
      }
      
      override protected function initializeLevelManager() : §+"2§
      {
         return new §,"X§();
      }
      
      override protected function initializeLevelMain() : §#_§
      {
         return new §'6§(stage,§?4§,§?"1§,§+!b§);
      }
      
      override protected function initializePackageManager() : §'#E§
      {
         return new §0#F§(§+!b§,this.§false§);
      }
      
      protected function get §9!n§() : §0#F§
      {
         return §6"v§ as §0#F§;
      }
      
      override protected function loadItems() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = null;
         if(_loc3_ || _loc1_)
         {
            §§push(this.§false§);
            loop0:
            while(true)
            {
               §§push(this.§9!n§);
               loop1:
               while(true)
               {
                  §§push(§§pop().§1"2§());
                  loop2:
                  while(true)
                  {
                     §§pop().§%"W§(§§pop());
                     loop3:
                     while(true)
                     {
                        §§push(this.§false§);
                        loop4:
                        for(; !_loc4_; if(!(_loc3_ || _loc2_))
                        {
                           continue;
                        },§§goto(addr95),§§push(this.§9!n§))
                        {
                           §§push(this.§9!n§);
                           loop5:
                           while(true)
                           {
                              §§pop().§'#P§(§§pop().§'#!§(),this.§9!n§.§7"Z§());
                              loop6:
                              while(true)
                              {
                                 §§push(this.§false§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(this.§9!n§);
                                    loop8:
                                    while(_loc3_)
                                    {
                                       if(_loc4_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop().§3F§());
                                       while(true)
                                       {
                                          §§pop().§5l§(§§pop());
                                          loop10:
                                          while(!(_loc4_ && _loc3_))
                                          {
                                             §§push(this.§false§);
                                             while(!_loc4_)
                                             {
                                                §§pop().§""9§(§7#&§.§06§(this.§9!n§.§]"j§()).levelGoals);
                                                while(!(_loc4_ && this))
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§push(this.§false§);
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§pop().§""9§(§7#&§.§06§(this.§9!n§.§3!i§()).bossObjects);
                                                      addr108:
                                                      while(true)
                                                      {
                                                         addr69:
                                                         while(true)
                                                         {
                                                            §§push(this.§false§);
                                                            continue loop13;
                                                         }
                                                      }
                                                   }
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      while(false)
                                                      {
                                                         §§goto(addr69);
                                                      }
                                                      var _loc1_:* = int(this.§9!n§.§8#;§ - 1);
                                                      while(true)
                                                      {
                                                         §§push(_loc1_);
                                                         if(_loc3_)
                                                         {
                                                            if(§§pop() < 0)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  §,"X§(§+!b§).§0w§(this.§9!n§.§,m§(),this.§false§,§'6§.§#!B§.getValue());
                                                               }
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  if(!(_loc4_ && _loc1_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc1_);
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr231:
                                                                        §§push(§§pop() - 1);
                                                                        while(true)
                                                                        {
                                                                           _loc1_ = §§pop();
                                                                        }
                                                                        addr231:
                                                                     }
                                                                     §§goto(addr231);
                                                                     addr259:
                                                                     while(true)
                                                                     {
                                                                        this.§false§.§9!e§(_loc2_);
                                                                        continue loop22;
                                                                     }
                                                                  }
                                                               }
                                                               while(!_loc3_)
                                                               {
                                                               }
                                                               continue;
                                                            }
                                                            _loc2_ = this.§9!n§.§""d§(_loc1_);
                                                            §§goto(addr259);
                                                         }
                                                         §§goto(addr231);
                                                      }
                                                      return;
                                                      addr67:
                                                   }
                                                }
                                                continue loop10;
                                                if(!(_loc4_ && this))
                                                {
                                                   continue loop4;
                                                }
                                             }
                                             continue loop7;
                                          }
                                          continue loop6;
                                          addr46:
                                          if(_loc4_ && _loc3_)
                                          {
                                             continue;
                                          }
                                          if(!_loc3_)
                                          {
                                             continue loop2;
                                          }
                                          §§pop().§ !y§(§§pop());
                                          if(!_loc3_)
                                          {
                                             loop19:
                                             while(true)
                                             {
                                                §§push(this.§false§);
                                                if(_loc3_)
                                                {
                                                   addr32:
                                                   §§push(this.§9!n§);
                                                   if(_loc3_ || this)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      §§push(§§pop().§,! §());
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr46);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop().§8"7§());
                                                         §§goto(addr32);
                                                      }
                                                      addr95:
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop().§ !y§(§§pop());
                                                      continue loop19;
                                                   }
                                                }
                                                break;
                                             }
                                             §§goto(addr72);
                                          }
                                          if(!_loc4_)
                                          {
                                             §§goto(addr60);
                                          }
                                          §§goto(addr108);
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.initializeGame();
         }
      }
      
      override protected function loadBackgrounds() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§"!j§);
            while(true)
            {
               §§pop().§7-§(§6"!§().Backgrounds);
               while(true)
               {
                  §§push(this.§"!j§);
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§pop().loadBackgroundsLua(this.§^"e§());
                  if(!(_loc1_ && this))
                  {
                     return;
                     addr64:
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      override public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.setFirstGameState();
         }
         do
         {
            § g§(§"C§.§^!7§);
         }
         while(_loc1_ && _loc1_);
         
      }
      
      protected function §^"e§() : String
      {
         return §]"Y§.§ !Q§(§3m§);
      }
      
      override protected function getAssetMap() : XML
      {
         return §>"p§.§ !Q§(§#!2§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §>"p§.§ !Q§(§?#J§);
         if(!_loc4_)
         {
            §1"9§.§;!P§(_loc2_,_loc1_,["Views","Components"],true);
         }
         return _loc1_;
      }
      
      override protected function getPopupData() : XML
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:XML = super.getPopupData();
         var _loc2_:XML = §>"p§.§ !Q§(§0"j§);
         if(!(_loc3_ && this))
         {
            §1"9§.§;!P§(_loc2_,_loc1_,["Popups"],true);
         }
         return _loc1_;
      }
      
      protected function get §false§() : §"#`§
      {
         return §?4§ as §"#`§;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreenBlack();
      }
   }
}
