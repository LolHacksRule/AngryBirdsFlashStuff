package §<"c§
{
   import §2"a§.§9#L§;
   import §;"Y§.§&#X§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §?m§.§3![§;
   import flash.display.Loader;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §&"3§ extends StateCutScene
   {
       
      
      private var §@!p§:Loader;
      
      public function §&"3§(param1:§+"2§, param2:§5"H§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override protected function startCutScene() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §@;§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
         var _loc1_:String = "cutscene_" + this.getCutSceneName();
         var _loc2_:ByteArray = §9#L§.§0j§(_loc1_);
         if(!(_loc4_ && this))
         {
            if(!_loc2_)
            {
               onCutSceneNotAvailable(null);
               if(_loc3_)
               {
                  if(_loc3_ || _loc3_)
                  {
                     if(!(_loc3_ || _loc3_))
                     {
                        loop0:
                        while(true)
                        {
                           this.§@!p§.loadBytes(_loc2_,new LoaderContext(false,new ApplicationDomain()));
                           addr115:
                           while(true)
                           {
                              §@;§.getItemByName("MovieClip_CutScene").mClip.addChild(this.§@!p§);
                              addr87:
                              while(_loc4_ && this)
                              {
                                 continue loop0;
                              }
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr115);
               }
               §§goto(addr87);
            }
            §§goto(addr118);
         }
         §§goto(addr115);
      }
      
      override protected function getCutSceneName() : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = null;
         var _loc2_:§3![§ = null;
         var _loc3_:* = null;
         if(!(_loc5_ && _loc2_))
         {
            if(§+!b§.previousLevel)
            {
               if(!(_loc5_ && _loc2_))
               {
                  _loc2_ = §+!b§.getEpisodeForLevel(§+!b§.previousLevel);
                  if(!(_loc5_ && _loc1_))
                  {
                     _loc3_ = §+!b§.previousLevelNumericName + "-OUTRO";
                     if(_loc4_)
                     {
                        if(_loc2_)
                        {
                           if(_loc5_)
                           {
                           }
                           addr88:
                           §§push(_loc1_);
                           if(_loc4_ || this)
                           {
                              if(!§§pop())
                              {
                                 addr97:
                                 _loc2_ = §+!b§.getEpisodeForLevel(§+!b§.currentLevel);
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    _loc3_ = §+!b§.currentLevelNumericName + "-INTRO";
                                    if(_loc4_ || _loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          if(_loc5_ && this)
                                          {
                                          }
                                          addr149:
                                          return _loc1_;
                                          addr148:
                                       }
                                    }
                                    §§goto(addr148);
                                 }
                                 §§push(_loc2_.getCutScene(_loc3_));
                                 if(_loc4_)
                                 {
                                    §§push(§§pop());
                                 }
                                 _loc1_ = §§pop();
                              }
                              §§goto(addr148);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr88);
                     }
                     §§push(_loc2_.getCutScene(_loc3_));
                     if(_loc4_ || _loc3_)
                     {
                        §§push(§§pop());
                     }
                     _loc1_ = §§pop();
                  }
               }
               §§goto(addr97);
            }
            §§goto(addr88);
         }
         §§goto(addr97);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§@!p§)
            {
               loop0:
               while(true)
               {
                  §@;§.getItemByName("MovieClip_CutScene").mClip.removeChild(this.§@!p§);
                  loop1:
                  while(true)
                  {
                     this.§@!p§.unloadAndStop();
                     while(true)
                     {
                        this.§@!p§ = null;
                        loop3:
                        while(_loc1_ || this)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              if(!_loc2_)
                              {
                                 while(true)
                                 {
                                    super.deActivate();
                                    if(_loc1_ || _loc2_)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 return;
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
            §§goto(addr23);
         }
         §§goto(addr33);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && param1))
         {
            if("SKIP" === _loc4_)
            {
               addr48:
               §§push(0);
               if(_loc6_)
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
                  §?!r§.§"#_§("misc_menubuttonproceed_1");
                  if(_loc5_)
                  {
                     break;
                  }
                  §§goto(addr75);
            }
            super.onUIInteraction(param1,param2,param3);
            addr75:
            return;
         }
         §§goto(addr48);
      }
      
      override protected function get stateOnDefaultEnd() : String
      {
         return §"C§.§^!7§;
      }
   }
}
