package § !k§
{
   import §!!§.§>4§;
   import §!!§.LevelManager;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5i§.§4!]§;
   import §8,§.§+_§;
   
   public class §@!o§ extends §+_§
   {
      
      public static const §3!=§:Boolean = false;
      
      public static var §5!F§:int;
      
      public static const § !v§:int = 0;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §,!-§:Number = -1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §3!=§ = false;
            while(true)
            {
               §5!F§ = § !v§;
               loop1:
               for(; _loc1_; while(_loc1_ || _loc1_)
               {
                  LOAD_STATE_STEP_2 = 2;
                  while(_loc1_ || §@!o§)
                  {
                     §,!-§ = -1;
                     if(!_loc1_)
                     {
                        continue;
                     }
                     §§goto(addr44);
                  }
               })
               {
                  § !v§ = 0;
                  do
                  {
                     LOAD_STATE_STEP_1 = 1;
                     continue loop1;
                  }
                  while(!_loc1_);
                  
               }
            }
         }
      }
      
      private var §8!D§:Number = 0;
      
      public function §@!o§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.init();
            do
            {
               this.§5]§();
            }
            while(_loc1_);
            
         }
      }
      
      protected function §5]§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§`-§ = new § C§(this);
            do
            {
               §`-§.init(dynamic.§[6§.Views.View_LevelLoad[0]);
            }
            while(_loc2_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.activate();
            do
            {
               §5!F§ = LOAD_STATE_STEP_1;
               do
               {
                  this.§[r§();
               }
               while(!(_loc2_ || _loc1_));
               
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      protected function §[r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(LevelManager.§^!F§ != null)
            {
               if(!(_loc1_ && _loc2_))
               {
                  addr45:
                  §`-§.setText("LOADING " + LevelManager.§^!F§.replace("-"," - "),"TextField_LevelLoading");
               }
            }
            return;
         }
         §§goto(addr45);
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
            if(_loc3_ || _loc2_)
            {
               if(§§pop() == §+_§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     §§push(§5!F§);
                     loop1:
                     while(true)
                     {
                        §§push(LOAD_STATE_STEP_1);
                        loop2:
                        while(§§pop() != §§pop())
                        {
                           §§push(§5!F§);
                           if(!_loc4_)
                           {
                              if(_loc3_ || this)
                              {
                                 §§push(LOAD_STATE_STEP_2);
                                 if(!(_loc3_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       while(true)
                                       {
                                          §§push(this.isReady());
                                          loop10:
                                          while(!§§pop())
                                          {
                                             §§push(this.hasError());
                                             if(_loc4_ && this)
                                             {
                                                continue;
                                             }
                                             if(§§pop())
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   this.onLevelLoadError();
                                                   loop12:
                                                   while(true)
                                                   {
                                                      if(_loc4_ && param1)
                                                      {
                                                         break loop10;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         loop4:
                                                         while(mNextState.length > 0)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               if(_loc4_ && _loc3_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               if(_loc3_)
                                                               {
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     return §+_§.STATE_STATUS_COMPLETED;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  addr136:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               if(!_loc4_)
                                                               {
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  break loop2;
                                                               }
                                                               while(true)
                                                               {
                                                                  this.initLevelLoad();
                                                                  addr155:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr177:
                                                                        §§push(_loc2_);
                                                                        break loop0;
                                                                     }
                                                                     §5!F§ = LOAD_STATE_STEP_2;
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop4;
                                                            }
                                                         }
                                                         return §+_§.STATE_STATUS_RUNNING;
                                                         addr32:
                                                      }
                                                      §§goto(addr155);
                                                   }
                                                }
                                             }
                                             §§goto(addr32);
                                          }
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop0;
                                             }
                                             this.onLevelLoadReady();
                                          }
                                       }
                                       addr129:
                                    }
                                    §§goto(addr136);
                                 }
                                 §§goto(addr32);
                              }
                              break loop0;
                           }
                           continue loop1;
                        }
                        while(true)
                        {
                           §4!]§.§8C§.clearLevel();
                           §§goto(addr165);
                        }
                     }
                  }
                  §§goto(addr178);
               }
               §§goto(addr177);
            }
            addr178:
            return §§pop();
         }
         §§goto(addr129);
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
      
      protected function initLevelMain(param1:§>4§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §4!]§.§9!d§(param1);
         }
      }
   }
}
