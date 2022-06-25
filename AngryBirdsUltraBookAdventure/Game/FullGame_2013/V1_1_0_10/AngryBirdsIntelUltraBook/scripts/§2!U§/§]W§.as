package §2!U§
{
   import §"!i§.§"!'§;
   import §"!i§.LevelManager;
   import §8!H§.§9![§;
   import §;!y§.§,!s§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   
   public class §]W§ extends §9![§
   {
      
      public static const §>!Q§:Boolean = false;
      
      public static var §77§:int;
      
      public static const §#O§:int = 0;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §>a§:Number = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §>!Q§ = false;
            while(true)
            {
               §77§ = §#O§;
               while(true)
               {
                  §#O§ = 0;
                  §§goto(addr98);
               }
            }
         }
         addr98:
         while(true)
         {
            LOAD_STATE_STEP_1 = 1;
            do
            {
               LOAD_STATE_STEP_2 = 2;
               do
               {
                  §>a§ = -1;
               }
               while(_loc1_ && _loc2_);
               
            }
            while(!(_loc2_ || _loc2_));
            
            if(!(_loc1_ && §]W§))
            {
               if(_loc2_ || _loc2_)
               {
                  if(!_loc1_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      private var §-!H§:Number = 0;
      
      public function §]W§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.init();
            do
            {
               this.§!q§();
            }
            while(!_loc2_);
            
         }
      }
      
      protected function §!q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§'!Q§ = new §&!G§(this);
            do
            {
               §'!Q§.init(§2!z§.§ _§.Views.View_LevelLoad[0]);
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
         }
         while(true)
         {
            §77§ = LOAD_STATE_STEP_1;
            while(_loc2_ || this)
            {
               this.§6b§();
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      protected function §6b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(LevelManager.§"L§ == null);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(!(_loc2_ && _loc1_))
               {
                  if(!§§pop())
                  {
                     loop1:
                     while(§§pop())
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           if(_loc1_)
                           {
                              §'!Q§.setText("LOADING " + LevelManager.§"L§.replace("-"," - "),"TextField_LevelLoading");
                           }
                           else
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(Boolean(§'!Q§));
                                 if(_loc1_ || _loc2_)
                                 {
                                    continue loop0;
                                    continue loop1;
                                 }
                                 addr96:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop3;
                                 }
                              }
                              addr97:
                           }
                        }
                        break;
                     }
                     return;
                     addr50:
                  }
               }
               §§goto(addr96);
            }
         }
         §§goto(addr97);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               if(§§pop() == §9![§.STATE_STATUS_RUNNING)
               {
                  loop1:
                  while(true)
                  {
                     §§push(§77§);
                     loop2:
                     while(true)
                     {
                        §§push(LOAD_STATE_STEP_1);
                        addr174:
                        while(§§pop() != §§pop())
                        {
                           §§push(§77§);
                           if(_loc4_)
                           {
                              if(_loc3_ && _loc2_)
                              {
                                 break loop1;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                        loop12:
                        while(true)
                        {
                           §,!s§.§=!I§.clearLevel();
                           addr178:
                           while(true)
                           {
                              this.initLevelLoad();
                              addr170:
                              while(true)
                              {
                                 §77§ = LOAD_STATE_STEP_2;
                                 loop8:
                                 while(true)
                                 {
                                    if(_loc4_ || _loc2_)
                                    {
                                       while(true)
                                       {
                                          addr33:
                                          loop11:
                                          while(mNextState.length > 0)
                                          {
                                             if(_loc4_ || this)
                                             {
                                                return §9![§.STATE_STATUS_COMPLETED;
                                             }
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             addr70:
                                             addr185:
                                             while(true)
                                             {
                                                if(!(_loc3_ && param1))
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§push(_loc2_);
                                                         break loop1;
                                                      }
                                                      addr183:
                                                      continue loop11;
                                                   }
                                                   addr128:
                                                   while(true)
                                                   {
                                                      this.onLevelLoadReady();
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(_loc4_ || this)
                                                   {
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      continue loop12;
                                                   }
                                                   continue loop8;
                                                }
                                             }
                                             continue loop1;
                                          }
                                          return §9![§.STATE_STATUS_RUNNING;
                                       }
                                       addr166:
                                    }
                                    §§goto(addr185);
                                 }
                              }
                              continue loop12;
                           }
                        }
                     }
                  }
                  return §§pop();
               }
               §§goto(addr183);
            }
         }
         §§goto(addr166);
      }
      
      protected function initLevelLoad() : void
      {
      }
      
      public function isReady() : Boolean
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
      
      protected function initLevelMain(param1:§"!'§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §,!s§.§`!O§(param1);
         }
      }
   }
}
