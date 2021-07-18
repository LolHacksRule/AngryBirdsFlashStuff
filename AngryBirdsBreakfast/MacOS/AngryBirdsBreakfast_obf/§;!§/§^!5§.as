package §;!§
{
   import §,L§.§6!W§;
   import §1T§.§'!c§;
   import §4!o§.§+!N§;
   import §8!K§.§3%§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import flash.display.Loader;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §^!5§ extends StateCutScene
   {
       
      
      private var §!""§:Loader;
      
      public function §^!5§(param1:§5!Y§, param2:§6h§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.init();
         }
         do
         {
            §?P§.movieClip.cacheAsBitmap = true;
         }
         while(!_loc1_);
         
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.activate(param1);
         }
         do
         {
            §6!!§.singleton.§%![§.§[!"§();
         }
         while(!_loc3_);
         
      }
      
      override protected function startCutScene() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:LoaderContext = null;
         if(!_loc5_)
         {
            §?P§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
         §§push(this.getCutSceneName());
         if(_loc4_ || _loc1_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:ByteArray = §+!N§.§3q§(_loc1_);
         if(_loc4_)
         {
            if(_loc2_)
            {
               if(!(_loc5_ && _loc1_))
               {
                  this.§!""§ = new Loader();
                  if(!(_loc5_ && _loc3_))
                  {
                     addr64:
                     _loc3_ = new LoaderContext(false,new ApplicationDomain());
                     if(!_loc5_)
                     {
                        _loc3_.allowCodeImport = true;
                        while(true)
                        {
                           this.§!""§.loadBytes(_loc2_,_loc3_);
                           loop1:
                           while(true)
                           {
                              §?P§.getItemByName("Container_Cutscene").mClip.addChild(this.§!""§);
                              loop2:
                              while(true)
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    while(true)
                                    {
                                       if(§§pop().search("intro") != -1)
                                       {
                                          continue loop2;
                                       }
                                       §§push(_loc1_);
                                       if(_loc4_)
                                       {
                                          if(§§pop().search("outro") == -1)
                                          {
                                             break;
                                          }
                                          if(_loc4_ || this)
                                          {
                                             continue loop1;
                                          }
                                          addr111:
                                          if(!(_loc4_ || _loc3_))
                                          {
                                             break loop2;
                                          }
                                          if(true)
                                          {
                                             break;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    §§goto(addr171);
                                 }
                                 continue loop1;
                              }
                              §§goto(addr140);
                           }
                           if(!(_loc4_ || this))
                           {
                              continue;
                           }
                           §§goto(addr137);
                        }
                     }
                     addr137:
                     §'!c§.§3!f§("birds_intro");
                     addr140:
                     §§goto(addr171);
                  }
               }
            }
            else
            {
               §@^§(null);
            }
            addr171:
            return;
         }
         §§goto(addr64);
      }
      
      override protected function getCutSceneName() : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = null;
         var _loc2_:§3%§ = null;
         var _loc3_:* = null;
         if(!(_loc4_ && _loc2_))
         {
            if(§&" §.previousLevel)
            {
               if(_loc5_)
               {
                  _loc2_ = §&" §.getEpisodeForLevel(§&" §.previousLevel);
                  if(_loc5_)
                  {
                     _loc3_ = §&" §.previousLevelNumericName + "-OUTRO";
                     if(_loc5_ || _loc1_)
                     {
                        if(_loc2_)
                        {
                           if(_loc4_)
                           {
                           }
                           addr79:
                           §§push(_loc1_);
                           if(_loc5_ || _loc1_)
                           {
                              if(!§§pop())
                              {
                                 addr88:
                                 _loc2_ = §&" §.getEpisodeForLevel(§&" §.currentLevel);
                                 if(_loc5_)
                                 {
                                    _loc3_ = §&" §.currentLevelNumericName + "-INTRO";
                                    if(!_loc5_)
                                    {
                                    }
                                    addr130:
                                    return _loc1_;
                                    addr129:
                                 }
                                 if(_loc2_)
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(_loc2_.getCutScene(_loc3_));
                                       if(_loc5_ || this)
                                       {
                                          §§push(§§pop());
                                       }
                                       _loc1_ = §§pop();
                                    }
                                 }
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr79);
                     }
                     §§push(_loc2_.getCutScene(_loc3_));
                     if(!_loc4_)
                     {
                        §§push(§§pop());
                     }
                     _loc1_ = §§pop();
                  }
               }
               §§goto(addr88);
            }
            §§goto(addr79);
         }
         §§goto(addr88);
      }
      
      override protected function loadCutSceneContent(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §9k§.loadContent(param1);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§!""§)
            {
               while(true)
               {
                  §?P§.getItemByName("Container_Cutscene").mClip.removeChild(this.§!""§);
                  addr96:
                  loop3:
                  while(true)
                  {
                     this.§!""§.unloadAndStop();
                     addr68:
                     while(!(_loc2_ || this))
                     {
                        continue loop3;
                     }
                     addr63:
                     this.§!""§ = null;
                  }
                  addr51:
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  return;
                  addr58:
               }
            }
            while(true)
            {
               super.deActivate();
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               if(!_loc1_)
               {
                  §§goto(addr51);
               }
               §§goto(addr68);
            }
            §§goto(addr58);
         }
         §§goto(addr96);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            if("SKIP" === _loc4_)
            {
               addr42:
               §§push(0);
               if(_loc5_ || param3)
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
                  §'!c§.§&j§();
                  if(!_loc6_)
                  {
                     break;
                  }
            }
            super.onUIInteraction(param1,param2,param3);
            return;
         }
         §§goto(addr42);
      }
   }
}
