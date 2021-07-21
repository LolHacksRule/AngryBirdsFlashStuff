package §^U§
{
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §,P§.§'_§;
   import §;<§.§'B§;
   import §<i§.§'!e§;
   import §<i§.§`!r§;
   
   public class § get§ extends §'B§
   {
      
      public static const §`!Z§:Boolean = false;
      
      public static var §`!w§:int;
      
      public static const §>!k§:int = 0;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §"! §:Number = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §`!Z§ = false;
         }
         loop0:
         while(true)
         {
            §`!w§ = §>!k§;
            loop1:
            while(true)
            {
               §>!k§ = 0;
               loop2:
               while(_loc2_)
               {
                  LOAD_STATE_STEP_1 = 1;
                  loop3:
                  while(!_loc1_)
                  {
                     LOAD_STATE_STEP_2 = 2;
                     while(_loc2_)
                     {
                        §"! § = -1;
                        if(!(_loc1_ && _loc1_))
                        {
                           if(_loc2_ || § get§)
                           {
                              return;
                           }
                           continue loop3;
                           continue loop3;
                        }
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      private var §>v§:Number = 0;
      
      public function § get§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
            do
            {
               this.initLoadingView();
            }
            while(_loc1_);
            
         }
      }
      
      protected function initLoadingView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§`!v§ = new §>!V§(this);
         }
         do
         {
            §`!v§.init(§]!M§.§"!V§.Views.View_LevelLoad[0]);
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.activate();
            while(true)
            {
               §`!w§ = LOAD_STATE_STEP_1;
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     this.§42§();
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr60);
      }
      
      protected function §42§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§`!r§.§0B§ == null);
            if(!_loc2_)
            {
               §§push(!§§pop());
            }
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(§§pop())
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!(_loc2_ && this))
                        {
                           §`!v§.setText("LOADING " + §`!r§.§0B§.replace("-"," - "),"TextField_LevelLoading");
                        }
                        else
                        {
                           loop3:
                           while(true)
                           {
                              §§push(Boolean(§`!v§));
                              if(!(_loc2_ && _loc1_))
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop0;
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
               }
               §§goto(addr96);
            }
         }
         §§goto(addr97);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || param1)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               if(§§pop() != §'B§.STATE_STATUS_RUNNING)
               {
                  if(!(_loc4_ && this))
                  {
                     §§push(_loc2_);
                  }
                  else
                  {
                     while(true)
                     {
                        addr163:
                        while(true)
                        {
                           §§push(§`!w§);
                           loop3:
                           while(true)
                           {
                              §§push(LOAD_STATE_STEP_1);
                              loop4:
                              while(§§pop() != §§pop())
                              {
                                 §§push(§`!w§);
                                 if(_loc4_)
                                 {
                                    continue loop3;
                                 }
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    §§goto(addr193);
                                 }
                                 if(_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(LOAD_STATE_STEP_2);
                                 if(_loc4_ && param1)
                                 {
                                    continue;
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(this.isReady());
                                       loop10:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             continue;
                                          }
                                          if(!_loc4_)
                                          {
                                             while(true)
                                             {
                                                this.onLevelLoadReady();
                                                break loop10;
                                             }
                                             addr144:
                                          }
                                          while(true)
                                          {
                                             if(_loc4_ && this)
                                             {
                                                break loop4;
                                             }
                                             §`!w§ = LOAD_STATE_STEP_2;
                                             while(true)
                                             {
                                                addr75:
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   addr31:
                                                   return §'B§.STATE_STATUS_RUNNING;
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                                 §§goto(addr37);
                              }
                              while(true)
                              {
                                 §'_§.§=M§.clearLevel();
                                 §§goto(addr170);
                                 §§goto(addr142);
                              }
                           }
                        }
                     }
                  }
                  addr193:
                  return §§pop();
               }
               §§goto(addr163);
            }
         }
         §§goto(addr144);
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
      
      protected function initLevelMain(param1:§'!e§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §'_§.loadLevel(param1);
         }
      }
   }
}
