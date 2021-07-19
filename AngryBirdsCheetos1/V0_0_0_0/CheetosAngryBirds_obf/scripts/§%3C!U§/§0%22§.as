package §<!U§
{
   import §!J§.§[&§;
   import §<!+§.§[!!§;
   
   public class §0"§ extends §&v§
   {
      
      public static const §`O§:String = "LevelLoadStateClassic";
      
      private static var §]!8§:Number;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §`O§ = "LevelLoadStateClassic";
         }
      }
      
      public function §0"§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super(param1,param2);
         }
      }
      
      public static function §>!U§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §[!!§.§,s§(§[!!§.§?I§());
         }
         do
         {
            §@4§ = §%!U§;
         }
         while(!_loc2_);
         
      }
      
      public static function §9n§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §51§ = param1;
         }
         do
         {
            §@4§ = §%!U§;
         }
         while(!_loc3_);
         
      }
      
      public static function §!7§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§[&§.§&!'§.camera)
            {
               while(true)
               {
                  §]!8§ = §[&§.§&!'§.camera.manualScale;
                  while(true)
                  {
                  }
               }
               addr66:
            }
            do
            {
               §@4§ = §%!U§;
               if(_loc2_ && §0"§)
               {
                  continue;
               }
            }
            while(!(_loc1_ || _loc2_));
            
            return;
         }
         §§goto(addr66);
      }
      
      override public function initLevelLoad() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §9!I§(§[!!§.§1L§(§[!!§.§7!F§));
            while(!isNaN(§]!8§))
            {
               do
               {
                  §[&§.§&!'§.camera.§?!R§(§]!8§);
                  do
                  {
                     §]!8§ = NaN;
                  }
                  while(_loc1_ && _loc2_);
                  
               }
               while(!(_loc2_ || _loc1_));
               
               if(_loc2_)
               {
                  addr59:
                  break;
               }
            }
            return;
         }
         §§goto(addr59);
      }
      
      override public function isReady() : Boolean
      {
         return §[&§.§&!'§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            mNextState = StatePlay.§`O§;
         }
      }
   }
}
