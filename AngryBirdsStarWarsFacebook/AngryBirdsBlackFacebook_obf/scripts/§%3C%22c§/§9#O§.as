package §<"c§
{
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §?m§.§8!B§;
   import com.angrybirds.§,!q§;
   
   public class §9#O§ extends §]"_§
   {
      
      public static const §!X§:Boolean = false;
      
      protected static var §;#2§:int;
      
      public static const §1#0§:int = 0;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §2!M§:Number = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §!X§ = false;
            while(true)
            {
               §;#2§ = §1#0§;
               loop1:
               while(!(_loc1_ && _loc2_))
               {
                  §1#0§ = 0;
                  while(true)
                  {
                     LOAD_STATE_STEP_1 = 1;
                     while(!(_loc1_ && _loc1_))
                     {
                        LOAD_STATE_STEP_2 = 2;
                        do
                        {
                           §2!M§ = -1;
                        }
                        while(_loc1_ && _loc2_);
                        
                        if(!(_loc1_ && §9#O§))
                        {
                           if(_loc2_)
                           {
                              return;
                              addr59:
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      private var §%"J§:Number = 0;
      
      public function §9#O§(param1:§+"2§, param2:§5"H§, param3:Boolean, param4:String)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
         }
         do
         {
            this.§7!c§();
         }
         while(!_loc2_);
         
      }
      
      protected function §7!c§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§@;§ = new §]#[§(this);
            do
            {
               §@;§.init(§&$§.§@8§.Views.View_LevelLoad[0]);
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super.activate(param1);
            while(true)
            {
               §;#2§ = LOAD_STATE_STEP_1;
               §§goto(addr71);
            }
         }
         addr71:
         while(true)
         {
            this.setLoadingText();
            if(!(_loc2_ && _loc2_))
            {
               if(_loc3_ || param1)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function setLoadingText() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(§+!b§.currentLevel != null)
            {
               if(_loc1_)
               {
                  §@;§.setText("LOADING " + §+!b§.currentLevel.replace("-"," - "),"TextField_LevelLoading");
               }
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super.update(param1);
            loop0:
            while(true)
            {
               §§push(§;#2§);
               loop1:
               while(true)
               {
                  §§push(LOAD_STATE_STEP_1);
                  loop2:
                  while(true)
                  {
                     if(§§pop() != §§pop())
                     {
                        §§push(§;#2§);
                        if(_loc3_)
                        {
                           §§push(LOAD_STATE_STEP_2);
                           if(_loc3_ || param1)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(this.isLoadingReady());
                                       while(!§§pop())
                                       {
                                          §§push(this.hasError());
                                          if(_loc3_ || _loc3_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   this.onLevelLoadError();
                                                }
                                                if(_loc3_)
                                                {
                                                   break loop2;
                                                }
                                                addr92:
                                                if(_loc3_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      break loop2;
                                                   }
                                                   continue loop0;
                                                }
                                                §§goto(addr130);
                                             }
                                             break loop2;
                                          }
                                       }
                                       addr88:
                                       if(_loc3_)
                                       {
                                          this.onLevelLoadReady();
                                          §§goto(addr92);
                                       }
                                       §;#2§ = LOAD_STATE_STEP_2;
                                       addr105:
                                    }
                                    break;
                                 }
                                 §§goto(addr88);
                              }
                              break;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                     if(!(_loc2_ && _loc3_))
                     {
                        addr127:
                        §,!q§.§9!,§.clearLevel();
                     }
                     this.initLevelLoad();
                     addr130:
                     §§goto(addr105);
                  }
                  return;
               }
            }
         }
         §§goto(addr127);
      }
      
      protected function initLevelLoad() : void
      {
      }
      
      public function isLoadingReady() : Boolean
      {
         return false;
      }
      
      public function hasError() : Boolean
      {
         return false;
      }
      
      public function onLevelLoadReady() : void
      {
      }
      
      public function onLevelLoadError() : void
      {
      }
      
      protected function §]h§(param1:§8!B§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §,!q§.loadLevel(param1);
         }
      }
   }
}
