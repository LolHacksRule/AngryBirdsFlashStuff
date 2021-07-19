package §;!§
{
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!0§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import com.angrybirds.§&!"§;
   
   public class §?!A§ extends §;" §
   {
      
      public static const §=!§:Boolean = false;
      
      protected static var §0@§:int;
      
      public static const §"c§:int = 0;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §0!"§:Number = -1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §?!A§))
         {
            §=!§ = false;
            loop0:
            while(true)
            {
               §0@§ = §"c§;
               while(true)
               {
                  §"c§ = 0;
                  loop3:
                  for(; _loc1_ || _loc2_; if(_loc1_ || _loc1_)
                  {
                     return;
                  })
                  {
                     LOAD_STATE_STEP_2 = 2;
                     while(!_loc2_)
                     {
                        continue loop0;
                        §0!"§ = -1;
                        if(!(_loc2_ && _loc1_))
                        {
                           continue loop3;
                        }
                     }
                     while(true)
                     {
                        LOAD_STATE_STEP_1 = 1;
                        continue loop3;
                     }
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      private var §@!0§:Number = 0;
      
      public function §?!A§(param1:§5!Y§, param2:§6h§, param3:Boolean, param4:String)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.init();
            do
            {
               this.§8!k§();
            }
            while(_loc1_ && this);
            
         }
      }
      
      protected function §8!k§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§?P§ = new §2W§(this);
         }
         do
         {
            §?P§.init(§#"0§.§+#§.Views.View_LevelLoad[0]);
         }
         while(_loc2_);
         
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super.activate(param1);
         }
         do
         {
            §0@§ = LOAD_STATE_STEP_1;
            do
            {
               this.setLoadingText();
            }
            while(_loc2_);
            
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      protected function setLoadingText() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§&" §.currentLevel != null)
            {
               if(!(_loc2_ && _loc1_))
               {
                  §?P§.setText("LOADING " + §&" §.currentLevel.replace("-"," - "),"TextField_LevelLoading");
               }
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super.update(param1);
            do
            {
               §§push(§0@§);
               while(true)
               {
                  §§push(LOAD_STATE_STEP_1);
                  addr136:
                  addr137:
                  addr140:
                  addr122:
                  §§goto(addr118);
               }
            }
            while(!(_loc3_ || param1));
            
         }
         addr118:
         while(§§pop() != §§pop())
         {
            continue loop1;
         }
         §&!"§.§1!D§.clearLevel();
         this.initLevelLoad();
         §0@§ = LOAD_STATE_STEP_2;
      }
      
      protected function initLevelLoad() : void
      {
      }
      
      public function isLoadingReady() : Boolean
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
      
      protected function §5i§(param1:§5!0§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §&!"§.loadLevel(param1);
         }
      }
   }
}
