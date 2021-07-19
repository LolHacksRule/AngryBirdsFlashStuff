package §,!"§
{
   import §'!O§.§'!#§;
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §^]§.§[z§;
   import §^]§.§`!K§;
   
   public class §"H§ extends §'!#§
   {
      
      public static const §1x§:Boolean = false;
      
      public static var §[!N§:int;
      
      public static const §8l§:int = 0;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §7!>§:Number = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §1x§ = false;
            do
            {
               §[!N§ = §8l§;
               §8l§ = 0;
               do
               {
                  LOAD_STATE_STEP_1 = 1;
               }
               while(!_loc2_);
               
            }
            while(!_loc2_);
            
            LOAD_STATE_STEP_2 = 2;
         }
      }
      
      private var §4!E§:Number = 0;
      
      public function §"H§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.init();
            do
            {
               this.initLoadingView();
            }
            while(!_loc2_);
            
         }
      }
      
      protected function initLoadingView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§0q§ = new §`o§(this);
         }
         do
         {
            §0q§.init(§`Z§.§5c§.Views.View_LevelLoad[0]);
         }
         while(!_loc2_);
         
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            while(true)
            {
               §[!N§ = LOAD_STATE_STEP_1;
               loop1:
               while(_loc2_ || this)
               {
                  while(true)
                  {
                     this.setLoadingText();
                     if(_loc2_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      protected function setLoadingText() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§`!K§.§5g§ != null)
            {
               if(_loc2_ || _loc1_)
               {
                  addr40:
                  §0q§.setText("LOADING " + §`!K§.§5g§.replace("-"," - "),"TextField_LevelLoading");
               }
            }
            return;
         }
         §§goto(addr40);
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
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() == §'!#§.STATE_STATUS_RUNNING)
               {
                  §§push(§[!N§);
                  loop0:
                  while(!(_loc4_ && _loc2_))
                  {
                     §§push(LOAD_STATE_STEP_1);
                     loop1:
                     while(true)
                     {
                        if(§§pop() != §§pop())
                        {
                           §§push(§[!N§);
                           if(_loc4_ && param1)
                           {
                              continue loop0;
                           }
                           §§goto(addr80);
                           continue loop0;
                        }
                        §#! §.§`'§.clearLevel();
                        if(_loc3_ || this)
                        {
                           this.initLevelLoad();
                           §[!N§ = LOAD_STATE_STEP_2;
                           break;
                           addr107:
                           addr103:
                        }
                        addr80:
                        §§push(LOAD_STATE_STEP_2);
                        if(!(_loc4_ && param1))
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc3_)
                              {
                                 §§push(this.isReady());
                                 while(!§§pop())
                                 {
                                    §§push(this.hasError());
                                    if(_loc3_ || _loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             this.onLevelLoadError();
                                             break loop1;
                                          }
                                          addr56:
                                       }
                                       break loop1;
                                    }
                                 }
                                 if(_loc3_)
                                 {
                                    this.onLevelLoadReady();
                                    break;
                                 }
                              }
                              else
                              {
                                 §§goto(addr107);
                              }
                              §§goto(addr103);
                           }
                           break;
                        }
                     }
                     while(mNextState.length > 0)
                     {
                        if(_loc3_)
                        {
                           return §'!#§.STATE_STATUS_COMPLETED;
                        }
                        §§goto(addr56);
                     }
                     return §'!#§.STATE_STATUS_RUNNING;
                  }
                  §§goto(addr152);
               }
               §§push(_loc2_);
            }
            addr152:
            return §§pop();
         }
         §§goto(addr26);
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
      
      protected function initLevelMain(param1:§[z§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §#! §.§!e§(param1);
         }
      }
   }
}
