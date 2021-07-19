package §<"c§
{
   import § "4§.§7q§;
   import §#!'§.§6"]§;
   import §2"Y§.§>"X§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import com.angrybirds.§,!q§;
   
   public class §6"k§ extends §9#5§
   {
      
      public static var §@!1§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §@!1§ = false;
         }
      }
      
      protected var §[!z§:Boolean = false;
      
      public function §6"k§(param1:§+"2§, param2:§>"X§, param3:§5"H§, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && this))
         {
            super(param1,param2,param3,param4,param5);
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§@!m§(§,!q§.§>#D§).§ "g§);
            loop0:
            while(true)
            {
               §§push(false);
               addr81:
               while(true)
               {
                  §§pop().§""O§ = §§pop();
                  continue loop0;
               }
            }
         }
         while(true)
         {
            super.initLevelLoad();
            do
            {
               this.loadPlayToken();
            }
            while(_loc2_);
            
            if(_loc2_)
            {
               continue;
            }
            if(!(_loc2_ && _loc2_))
            {
               break;
            }
            §§goto(addr82);
         }
      }
      
      protected function loadPlayToken() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(!§@!1§)
            {
               loop0:
               while(true)
               {
                  §7q§(§4#;§.singleton.dataModel.userProgress).§9"t§(§+!b§.currentLevel,false);
                  if(!(_loc2_ && _loc2_))
                  {
                     break;
                  }
                  addr72:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(!_loc2_)
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr72);
      }
      
      override public function isLoadingReady() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§@!1§);
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
                           addr124:
                           while(true)
                           {
                              §§push(Boolean(super.isLoadingReady()));
                              addr88:
                              while(_loc2_ || _loc1_)
                              {
                              }
                              continue loop3;
                           }
                        }
                     }
                     loop6:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              §§push(§7q§(§4#;§.singleton.dataModel.userProgress).§4r§);
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    continue loop0;
                                 }
                                 if(!_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(!§§pop());
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(_loc1_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop());
                                    if(_loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             if(!_loc2_)
                                             {
                                                break;
                                             }
                                             if(!_loc1_)
                                             {
                                                continue;
                                             }
                                             addr97:
                                             if(_loc2_ || this)
                                             {
                                                break loop6;
                                             }
                                             §§goto(addr124);
                                          }
                                          continue loop7;
                                          addr78:
                                       }
                                       return §§pop();
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr78);
                              }
                              §§goto(addr88);
                           }
                        }
                        §§goto(addr97);
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr118);
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.onLevelLoadError();
         }
         var _loc1_:String = "level-" + §+!b§.currentLevelNumericName;
         if(!_loc2_)
         {
            §6"]§.§'7§(_loc1_);
         }
         loop0:
         while(true)
         {
            §§push(§@!m§(§,!q§.§>#D§).§ "g§);
            while(true)
            {
               §§pop().§9O§();
               §§push(§@!m§(§,!q§.§>#D§).§ "g§);
               addr86:
               continue loop0;
               if(_loc3_ || _loc1_)
               {
                  §§pop().§""O§ = false;
                  if(!_loc2_)
                  {
                     return;
                  }
                  continue loop0;
               }
            }
         }
      }
   }
}
