package §9!5§
{
   import §0!N§.§=+§;
   import §0!N§.LevelManager;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §<!>§.§?Y§;
   import §true§.§ _§;
   
   public class §[!k§ extends §?Y§
   {
      
      public static const §>^§:Boolean = false;
      
      public static var §&!B§:int;
      
      public static const §9u§:int = 0;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §5!"§:Number = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §>^§ = false;
            while(true)
            {
               §&!B§ = §9u§;
               loop1:
               while(true)
               {
                  §9u§ = 0;
                  while(true)
                  {
                     LOAD_STATE_STEP_1 = 1;
                     while(_loc2_ || _loc2_)
                     {
                        continue loop1;
                        loop4:
                        while(_loc2_ || §[!k§)
                        {
                           while(true)
                           {
                              §5!"§ = -1;
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               LOAD_STATE_STEP_2 = 2;
               §§goto(addr35);
            }
         }
         §§goto(addr52);
      }
      
      private var §?!9§:Number = 0;
      
      public function §[!k§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
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
            do
            {
               this.§5^§();
            }
            while(!_loc1_);
            
         }
      }
      
      protected function §5^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§5!P§ = new §'!^§(this);
         }
         do
         {
            §5!P§.init(§[!'§.§+@§.Views.View_LevelLoad[0]);
         }
         while(_loc1_);
         
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
               §&!B§ = LOAD_STATE_STEP_1;
               §§goto(addr45);
            }
         }
         addr45:
         while(true)
         {
            this.§>g§();
            if(_loc1_)
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function §>g§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(LevelManager.§4Y§ != null)
            {
               if(_loc1_)
               {
                  addr39:
                  §5!P§.setText("LOADING " + LevelManager.§4Y§.replace("-"," - "),"TextField_LevelLoading");
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      override public function run(param1:Number) : int
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
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
      
      protected function initLevelMain(param1:§=+§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            § _§.§1!+§(param1);
         }
      }
   }
}
