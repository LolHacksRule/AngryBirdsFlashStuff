package §'!O§
{
   import §-!"§.§=p§;
   import §9b§.§"!S§;
   import §<u§.§;A§;
   import §<u§.§]!Q§;
   import §^!5§.§&!E§;
   
   public class §2!U§ extends §=j§
   {
      
      public static var §9q§:int;
      
      public static const §4f§:int = 0;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §3!6§:Number = -1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §9q§ = §4f§;
            do
            {
               §4f§ = 0;
               loop1:
               do
               {
                  LOAD_STATE_STEP_1 = 1;
                  while(true)
                  {
                     LOAD_STATE_STEP_2 = 2;
                     while(_loc1_)
                     {
                        §3!6§ = -1;
                        if(_loc1_ || _loc1_)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               while(!_loc1_);
               
            }
            while(!_loc1_);
            
         }
      }
      
      private var §8R§:Number = 0;
      
      public function §2!U§(param1:Boolean, param2:String)
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
         if(!(_loc2_ && _loc1_))
         {
            super.init();
            while(true)
            {
               this.§]!9§ = new §]!Q§(this);
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     §]!9§.init(§;A§.§=I§.Views.View_LevelLoad[0]);
                     if(_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr68);
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
               §9q§ = LOAD_STATE_STEP_1;
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!(_loc4_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc2_);
            while(true)
            {
               if(§§pop() != §=p§.STATE_STATUS_RUNNING)
               {
                  if(!_loc4_)
                  {
                     return _loc2_;
                  }
                  else
                  {
                     while(true)
                     {
                        addr148:
                        while(true)
                        {
                           §§push(§9q§);
                           while(true)
                           {
                              §§push(LOAD_STATE_STEP_1);
                              §§goto(addr151);
                           }
                        }
                     }
                  }
                  return §§pop();
               }
               §§goto(addr148);
               if(!(_loc3_ || this))
               {
                  continue;
               }
               §§push(LOAD_STATE_STEP_2);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop() == §§pop())
                  {
                     §§goto(addr129);
                  }
                  §§goto(addr42);
               }
               addr151:
               while(§§pop() != §§pop())
               {
                  continue loop3;
               }
               §§goto(addr70);
            }
         }
         addr70:
         loop5:
         do
         {
            §"!S§.§-!7§.clearLevel();
            loop6:
            while(true)
            {
               this.initLevelLoad();
               do
               {
                  §9q§ = LOAD_STATE_STEP_2;
                  loop8:
                  do
                  {
                     if(!_loc4_)
                     {
                        loop9:
                        while(mNextState.length > 0)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              continue loop8;
                           }
                           if(!(_loc4_ && _loc2_))
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop6;
                              }
                              addr129:
                              while(true)
                              {
                                 if(!this.isReady())
                                 {
                                    continue loop9;
                                 }
                                 if(!_loc4_)
                                 {
                                    this.onLevelLoadReady();
                                 }
                              }
                           }
                           while(true)
                           {
                              continue loop9;
                           }
                        }
                        return §=p§.STATE_STATUS_RUNNING;
                        addr42:
                     }
                     continue loop1;
                  }
                  while(!_loc3_);
                  
               }
               while(_loc4_ && _loc2_);
               
               continue loop5;
            }
         }
         while(_loc4_ && _loc2_);
         
         return §=p§.STATE_STATUS_COMPLETED;
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
      
      protected function §8!@§(param1:§&!E§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §"!S§.§&O§(param1);
         }
      }
   }
}
