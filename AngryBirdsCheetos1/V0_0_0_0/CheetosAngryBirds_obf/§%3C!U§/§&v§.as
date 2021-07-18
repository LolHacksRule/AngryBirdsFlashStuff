package §<!U§
{
   import § !+§.§0Z§;
   import §!J§.§[&§;
   import §+?§.§,!N§;
   import §+?§.§@]§;
   import §<!+§.§with§;
   import §]2§.§[4§;
   
   public class §&v§ extends §[4§
   {
      
      public static var §@4§:int;
      
      public static const §%!U§:int = 0;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §51§:Number = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §@4§ = §%!U§;
            while(true)
            {
               §%!U§ = 0;
            }
            addr85:
         }
         while(true)
         {
            LOAD_STATE_STEP_1 = 1;
            while(!(_loc1_ && §&v§))
            {
               LOAD_STATE_STEP_2 = 2;
               for(; !_loc1_; §51§ = -1,if(_loc2_)
               {
                  return;
               })
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr85);
               }
            }
         }
      }
      
      private var §7K§:Number = 0;
      
      public function §&v§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
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
         }
         do
         {
            this.§"c§ = new §,!N§(this);
            do
            {
               §"c§.init(§@]§.§3!6§.Views.View_LevelLoad[0]);
            }
            while(_loc2_ && _loc1_);
            
         }
         while(_loc2_);
         
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            loop0:
            while(true)
            {
               §§push(§0Z§.§4J§);
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     addr71:
                     while(true)
                     {
                        §§push(§0Z§.§4J§);
                        addr73:
                        while(true)
                        {
                           §§pop().start();
                           addr74:
                           while(true)
                           {
                              if(_loc1_)
                              {
                                 continue loop0;
                              }
                           }
                        }
                     }
                     addr71:
                  }
                  while(true)
                  {
                     §[&§.§&!'§.clearLevel();
                     while(!_loc1_)
                     {
                        if(!(_loc1_ && this))
                        {
                           §@4§ = LOAD_STATE_STEP_1;
                           if(!_loc1_)
                           {
                              return;
                           }
                           continue;
                        }
                        §§goto(addr71);
                     }
                     §§goto(addr74);
                  }
                  continue;
               }
               §§goto(addr73);
            }
         }
         §§goto(addr71);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_)
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
               if(§§pop() == §[4§.STATE_STATUS_RUNNING)
               {
                  loop1:
                  while(true)
                  {
                     §§push(§@4§);
                     loop2:
                     while(!(_loc3_ && _loc3_))
                     {
                        if(!_loc4_)
                        {
                           continue loop0;
                        }
                        §§push(LOAD_STATE_STEP_1);
                        loop3:
                        while(§§pop() != §§pop())
                        {
                           §§push(§@4§);
                           if(!(_loc4_ || param1))
                           {
                              continue loop2;
                           }
                           §§push(LOAD_STATE_STEP_2);
                           if(!_loc4_)
                           {
                              continue;
                           }
                           if(§§pop() == §§pop())
                           {
                              loop9:
                              while(true)
                              {
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    addr158:
                                    §§push(_loc2_);
                                    break loop2;
                                 }
                                 if(this.isReady())
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       if(_loc4_)
                                       {
                                          this.onLevelLoadReady();
                                          loop10:
                                          while(true)
                                          {
                                             if(_loc4_ || this)
                                             {
                                                loop8:
                                                while(mNextState.length > 0)
                                                {
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      addr45:
                                                      if(!_loc4_)
                                                      {
                                                         loop6:
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               §@4§ = LOAD_STATE_STEP_2;
                                                               while(true)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               addr120:
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  this.initLevelLoad();
                                                                  continue loop6;
                                                               }
                                                               addr153:
                                                            }
                                                         }
                                                      }
                                                      return §[4§.STATE_STATUS_COMPLETED;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         addr54:
                                                         if(_loc4_ || this)
                                                         {
                                                            break;
                                                         }
                                                         break loop3;
                                                      }
                                                      continue loop9;
                                                   }
                                                   continue loop10;
                                                }
                                                return §[4§.STATE_STATUS_RUNNING;
                                                addr33:
                                             }
                                             continue loop1;
                                          }
                                          addr108:
                                       }
                                       §§goto(addr120);
                                    }
                                    §§goto(addr108);
                                 }
                              }
                           }
                           §§goto(addr33);
                        }
                        while(true)
                        {
                           §[&§.§&!'§.clearLevel();
                           §§goto(addr153);
                           §§goto(addr54);
                        }
                     }
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr158);
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
      
      protected function §9!I§(param1:§with§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §[&§.§,s§(param1);
         }
      }
   }
}
