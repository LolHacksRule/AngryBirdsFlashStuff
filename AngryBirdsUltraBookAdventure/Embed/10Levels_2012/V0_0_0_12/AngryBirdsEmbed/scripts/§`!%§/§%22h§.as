package §`!%§
{
   import §"!5§.§,!!§;
   import §'X§.§9[§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §>!C§.§6M§;
   import §>!C§.§9R§;
   
   public class §"h§ extends §9[§
   {
      
      public static const §8!7§:Boolean = false;
      
      public static var §&,§:int;
      
      public static const §?!8§:int = 0;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §%a§:Number = -1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §8!7§ = false;
            §&,§ = §?!8§;
         }
         if(_loc1_)
         {
            LOAD_STATE_STEP_2 = 2;
            §%a§ = -1;
         }
      }
      
      private var §-n§:Number = 0;
      
      public function §"h§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
            if(!_loc1_)
            {
               this.initLoadingView();
            }
         }
      }
      
      protected function initLoadingView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§#!4§ = new §!!1§(this);
            if(_loc1_)
            {
               addr40:
               §#!4§.init(§0!&§.§'^§.Views.View_LevelLoad[0]);
            }
            return;
         }
         §§goto(addr40);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.activate();
            if(_loc1_ || _loc2_)
            {
               addr42:
               §&,§ = LOAD_STATE_STEP_1;
               if(!_loc2_)
               {
                  this.setLoadingText();
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      protected function setLoadingText() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§6M§.§[z§ != null)
            {
               if(!_loc1_)
               {
                  §#!4§.setText("LOADING " + §6M§.§[z§.replace("-"," - "),"TextField_LevelLoading");
               }
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || param1)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop() != §9[§.STATE_STATUS_RUNNING)
               {
                  §§push(_loc2_);
                  if(!(_loc4_ && _loc2_))
                  {
                     return §§pop();
                  }
                  addr70:
                  §§push(LOAD_STATE_STEP_1);
                  if(_loc3_)
                  {
                     if(§§pop() == §§pop())
                     {
                        §,!!§.§;4§.clearLevel();
                        if(_loc3_)
                        {
                           this.initLevelLoad();
                           §&,§ = LOAD_STATE_STEP_2;
                           if(_loc4_ && this)
                           {
                              addr124:
                              this.onLevelLoadReady();
                           }
                           else
                           {
                              addr91:
                           }
                        }
                        §§goto(addr91);
                     }
                     else
                     {
                        addr94:
                        if(§&,§ == LOAD_STATE_STEP_2)
                        {
                           if(_loc3_)
                           {
                              §§push(this.isReady());
                              if(_loc3_ || _loc3_)
                              {
                                 addr141:
                                 if(§§pop())
                                 {
                                    if(!(_loc4_ && param1))
                                    {
                                       §§goto(addr124);
                                    }
                                    §§goto(addr145);
                                 }
                                 else
                                 {
                                    §§push(this.hasError());
                                 }
                                 if(mNextState.length > 0)
                                 {
                                    §§goto(addr145);
                                 }
                                 else
                                 {
                                    §§goto(addr148);
                                 }
                              }
                              if(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    this.onLevelLoadError();
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§goto(addr141);
                                    }
                                    addr145:
                                    return §9[§.STATE_STATUS_COMPLETED;
                                 }
                              }
                              §§goto(addr141);
                           }
                           addr148:
                           return §9[§.STATE_STATUS_RUNNING;
                        }
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr94);
               }
               else
               {
                  §§push(§&,§);
                  if(_loc3_)
                  {
                     §§goto(addr70);
                  }
               }
               §§goto(addr94);
            }
            §§goto(addr70);
         }
         §§goto(addr91);
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
      
      protected function initLevelMain(param1:§9R§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §,!!§.§<H§(param1);
         }
      }
   }
}
