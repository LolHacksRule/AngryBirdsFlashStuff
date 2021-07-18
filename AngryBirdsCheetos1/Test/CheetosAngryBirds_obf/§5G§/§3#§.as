package §5G§
{
   import §"§.§%!$§;
   import §6;§.§%[§;
   import §>P§.§5!§;
   import §>P§.§>!;§;
   import §`![§.§!!K§;
   import §`h§.§@!Z§;
   
   public class §3#§ extends §%!$§
   {
      
      public static var §@!L§:int;
      
      public static const §@!8§:int = 0;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §@7§:Number = -1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §@!L§ = §@!8§;
            while(true)
            {
               §@!8§ = 0;
               addr73:
               while(!_loc2_)
               {
               }
            }
         }
         while(true)
         {
            LOAD_STATE_STEP_1 = 1;
            loop3:
            do
            {
               LOAD_STATE_STEP_2 = 2;
               while(_loc1_)
               {
                  §@7§ = -1;
                  if(_loc1_)
                  {
                     continue loop3;
                  }
               }
               §§goto(addr73);
            }
            while(!_loc1_);
            
            return;
         }
      }
      
      private var §7,§:Number = 0;
      
      public function §3#§(param1:Boolean, param2:String)
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
         if(!_loc1_)
         {
            super.init();
            do
            {
               this.§%!0§ = new §5!§(this);
               do
               {
                  §%!0§.init(§>!;§.§ get§.Views.View_LevelLoad[0]);
               }
               while(!(_loc2_ || _loc1_));
               
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.activate();
            do
            {
               §§push(§%[§.§`1§);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(§%[§.§`1§);
                        addr84:
                        while(true)
                        {
                           §§pop().start();
                           addr85:
                           while(true)
                           {
                           }
                        }
                     }
                     addr82:
                  }
                  while(true)
                  {
                     §@!Z§.§;!,§.clearLevel();
                     do
                     {
                        §@!L§ = LOAD_STATE_STEP_1;
                     }
                     while(_loc2_ && _loc2_);
                     
                     if(!(_loc1_ || this))
                     {
                        continue;
                     }
                     if(_loc1_)
                     {
                        break;
                     }
                     §§goto(addr82);
                  }
                  continue;
               }
               §§goto(addr84);
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!(_loc4_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               if(§§pop() == §%!$§.STATE_STATUS_RUNNING)
               {
                  loop1:
                  while(true)
                  {
                     §§push(§@!L§);
                     loop2:
                     while(_loc3_)
                     {
                        §§push(LOAD_STATE_STEP_1);
                        loop3:
                        while(true)
                        {
                           if(§§pop() != §§pop())
                           {
                              §§push(§@!L§);
                              if(_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    §§push(LOAD_STATE_STEP_2);
                                    if(!_loc4_)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             if(!_loc4_)
                                             {
                                                if(this.isReady())
                                                {
                                                   addr110:
                                                   while(true)
                                                   {
                                                      this.onLevelLoadReady();
                                                   }
                                                   addr110:
                                                }
                                                break;
                                             }
                                             addr157:
                                             §§goto(addr158);
                                          }
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                addr114:
                                                break loop3;
                                             }
                                             §§goto(addr123);
                                          }
                                          addr112:
                                       }
                                       break;
                                    }
                                    continue;
                                 }
                                 addr158:
                              }
                              continue loop2;
                              return _loc2_;
                           }
                           if(!_loc4_)
                           {
                              §@!Z§.§;!,§.clearLevel();
                           }
                           while(true)
                           {
                              this.initLevelLoad();
                              addr123:
                              while(_loc3_ || this)
                              {
                                 §@!L§ = LOAD_STATE_STEP_2;
                                 while(true)
                                 {
                                    break loop3;
                                    addr61:
                                    if(_loc3_ || param1)
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§goto(addr31);
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                           §§goto(addr123);
                        }
                        while(true)
                        {
                           if(mNextState.length > 0)
                           {
                              if(!_loc4_)
                              {
                                 if(!(_loc4_ && param1))
                                 {
                                    return §%!$§.STATE_STATUS_COMPLETED;
                                 }
                              }
                              else if(_loc3_ || param1)
                              {
                                 §§goto(addr61);
                              }
                              else
                              {
                                 §§goto(addr110);
                              }
                              §§goto(addr112);
                           }
                           break;
                           §§goto(addr114);
                        }
                        addr31:
                        return §%!$§.STATE_STATUS_RUNNING;
                     }
                     continue loop0;
                  }
               }
               §§goto(addr157);
            }
         }
         §§goto(addr110);
      }
      
      public function initLevelLoad() : void
      {
      }
      
      public function isReady() : Boolean
      {
         return false;
      }
      
      public function onLevelLoadReady() : void
      {
      }
      
      protected function §8!a§(param1:§!!K§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §@!Z§.§2Q§(param1);
         }
      }
   }
}
