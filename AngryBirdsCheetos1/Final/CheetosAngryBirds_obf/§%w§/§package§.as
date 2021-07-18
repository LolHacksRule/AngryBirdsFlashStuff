package §%w§
{
   import §-H§.§&c§;
   import §0F§.§'j§;
   import §0F§.§0p§;
   import §?m§.§7?§;
   import §]!F§.§&!]§;
   import §`C§.§9!'§;
   
   public class §package§ extends §&c§
   {
      
      public static var §?6§:int;
      
      public static const §1!7§:int = 0;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §8!D§:Number = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §?6§ = §1!7§;
            loop0:
            while(true)
            {
               §1!7§ = 0;
               loop1:
               while(true)
               {
                  LOAD_STATE_STEP_1 = 1;
                  while(true)
                  {
                     LOAD_STATE_STEP_2 = 2;
                     while(_loc2_)
                     {
                        continue loop1;
                        §8!D§ = -1;
                        if(!_loc1_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
      }
      
      private var §@R§:Number = 0;
      
      public function §package§(param1:Boolean, param2:String)
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            while(true)
            {
               this.§3t§ = new §'j§(this);
               §§goto(addr68);
            }
         }
         addr68:
         while(true)
         {
            §3t§.init(§0p§.§'! §.Views.View_LevelLoad[0]);
            if(!_loc2_)
            {
               if(!(_loc2_ && _loc1_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.activate();
            while(true)
            {
               §§push(§9!'§.§7!Z§);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     while(_loc1_)
                     {
                        §§push(§9!'§.§7!Z§);
                        while(true)
                        {
                           §§pop().start();
                           addr80:
                           while(true)
                           {
                           }
                        }
                        addr51:
                        if(!(_loc2_ && this))
                        {
                           §?6§ = LOAD_STATE_STEP_1;
                           if(!(_loc1_ || this))
                           {
                              while(_loc1_)
                              {
                                 §§goto(addr51);
                              }
                              §§goto(addr80);
                              addr49:
                           }
                           return;
                           addr44:
                        }
                     }
                     continue;
                  }
                  while(true)
                  {
                     §7?§.§4!H§.clearLevel();
                     §§goto(addr49);
                     §§goto(addr80);
                  }
               }
               §§goto(addr79);
            }
         }
         §§goto(addr44);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!(_loc4_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || param1)
         {
            §§push(_loc2_);
            loop0:
            while(§§pop() == §&c§.STATE_STATUS_RUNNING)
            {
               loop1:
               while(true)
               {
                  §§push(§?6§);
                  loop2:
                  while(true)
                  {
                     §§push(LOAD_STATE_STEP_1);
                     addr143:
                     while(§§pop() != §§pop())
                     {
                        §§push(§?6§);
                        if(!_loc4_)
                        {
                           if(_loc4_ && _loc3_)
                           {
                              break loop1;
                           }
                           if(!(_loc3_ || _loc2_))
                           {
                              continue loop0;
                           }
                           §§push(LOAD_STATE_STEP_2);
                           if(!_loc4_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    while(true)
                                    {
                                       if(this.isReady())
                                       {
                                          if(!_loc4_)
                                          {
                                             while(true)
                                             {
                                                this.onLevelLoadReady();
                                             }
                                             addr119:
                                          }
                                          §§goto(addr121);
                                       }
                                       §§goto(addr42);
                                    }
                                    addr114:
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr42);
                           }
                           §§goto(addr143);
                           continue loop0;
                        }
                        continue loop2;
                     }
                     loop8:
                     while(true)
                     {
                        §7?§.§4!H§.clearLevel();
                        loop9:
                        while(true)
                        {
                           this.initLevelLoad();
                           loop6:
                           while(_loc3_ || param1)
                           {
                              §?6§ = LOAD_STATE_STEP_2;
                              while(!_loc3_)
                              {
                                 continue loop6;
                              }
                              loop5:
                              while(mNextState.length > 0)
                              {
                                 if(_loc3_)
                                 {
                                    addr49:
                                    if(!(_loc4_ && param1))
                                    {
                                       if(_loc3_ || this)
                                       {
                                          return §&c§.STATE_STATUS_COMPLETED;
                                       }
                                       continue loop8;
                                    }
                                    addr121:
                                    while(true)
                                    {
                                       continue loop5;
                                       §§goto(addr49);
                                    }
                                 }
                                 else
                                 {
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       if(_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          break loop0;
                                       }
                                       continue loop9;
                                    }
                                    §§goto(addr126);
                                 }
                              }
                              addr126:
                              return §&c§.STATE_STATUS_RUNNING;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               return §§pop();
            }
            §§goto(addr163);
            §§push(_loc2_);
         }
         §§goto(addr114);
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
      
      protected function §!9§(param1:§&!]§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §7?§.§!!@§(param1);
         }
      }
   }
}
