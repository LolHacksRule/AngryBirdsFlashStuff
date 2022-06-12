package §7"@§
{
   import §#!e§.§1"B§;
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §0!G§.§1-§;
   import §]!A§.;
   
   public class §@T§ extends §1-§
   {
      
      public static const §`!c§:Boolean = false;
      
      public static var §;;§:int;
      
      public static const §6n§:int = 0;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §]N§:Number = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §`!c§ = false;
            while(true)
            {
               §;;§ = §6n§;
               while(!_loc1_)
               {
                  addr74:
                  if(!(_loc1_ && _loc2_))
                  {
                     §]N§ = -1;
                     addr81:
                     if(!(_loc2_ || _loc1_))
                     {
                        loop5:
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              addr57:
                              if(!(_loc1_ && _loc2_))
                              {
                                 §§goto(addr74);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    LOAD_STATE_STEP_1 = 1;
                                    break loop5;
                                    §§goto(addr57);
                                 }
                                 addr91:
                              }
                           }
                           break;
                           §§goto(addr81);
                        }
                        while(true)
                        {
                           LOAD_STATE_STEP_2 = 2;
                           §§goto(addr55);
                        }
                        addr55:
                     }
                     return;
                  }
               }
            }
         }
         while(true)
         {
            §6n§ = 0;
            §§goto(addr91);
         }
      }
      
      private var §!"1§:Number = 0;
      
      public function §@T§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
         }
         do
         {
            this.§;!T§();
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      protected function §;!T§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§6w§ = new §7!A§(this);
         }
         do
         {
            §6w§.init(§ "A§.§4[§.Views.View_LevelLoad[0]);
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.activate();
         }
         while(true)
         {
            §;;§ = LOAD_STATE_STEP_1;
            while(_loc1_)
            {
               this.§?I§();
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      protected function §?I§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(LevelManager.§'!O§ == null);
            if(_loc2_)
            {
               §§push(!§§pop());
               if(!_loc1_)
               {
                  addr85:
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc1_)
                           {
                              if(!_loc1_)
                              {
                                 §6w§.setText("LOADING " + LevelManager.§'!O§.replace("-"," - "),"TextField_LevelLoading");
                                 addr75:
                              }
                              else
                              {
                                 loop1:
                                 while(true)
                                 {
                                    §§push(Boolean(§6w§));
                                    if(_loc2_ || this)
                                    {
                                       continue loop2;
                                    }
                                    addr87:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                           §§goto(addr75);
                        }
                        return;
                     }
                  }
               }
               §§goto(addr87);
            }
            §§goto(addr85);
         }
         §§goto(addr75);
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
               if(§§pop() != §1-§.STATE_STATUS_RUNNING)
               {
                  addr188:
                  return _loc2_;
               }
               else
               {
                  while(true)
                  {
                     §§push(§;;§);
                     addr169:
                     while(!_loc3_)
                     {
                        continue loop0;
                     }
                  }
                  addr167:
               }
               return §§pop();
            }
         }
         §§goto(addr190);
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
      
      protected function initLevelMain(param1:§1"B§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §#6§.§-!4§(param1);
         }
      }
   }
}
