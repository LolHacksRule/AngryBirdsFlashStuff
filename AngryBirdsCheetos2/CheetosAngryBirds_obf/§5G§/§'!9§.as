package §5G§
{
   import §`![§.§@;§;
   import §`h§.§@!Z§;
   
   public class §'!9§ extends §3#§
   {
      
      public static const §3!?§:String = "LevelLoadStateClassic";
      
      private static var §5b§:Number;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §3!?§ = "LevelLoadStateClassic";
         }
      }
      
      public function §'!9§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      public static function §-4§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §@;§.§2Q§(§@;§.§,!L§());
            do
            {
               §@!L§ = §@!8§;
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      public static function dynamic(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §@7§ = param1;
         }
         do
         {
            §@!L§ = §@!8§;
         }
         while(_loc3_ && param1);
         
      }
      
      public static function §7T§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §'!9§))
         {
            if(§@!Z§.§;!,§.camera)
            {
               if(_loc2_)
               {
                  §5b§ = §@!Z§.§;!,§.camera.manualScale;
                  addr73:
                  while(true)
                  {
                  }
                  addr73:
               }
               §§goto(addr73);
            }
            while(true)
            {
               §@!L§ = §@!8§;
               if(!(_loc1_ && _loc1_))
               {
                  break;
               }
               §§goto(addr73);
            }
            return;
         }
         §§goto(addr73);
      }
      
      override public function initLevelLoad() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §8!a§(§@;§.§6!M§(§@;§.§6!K§));
            loop0:
            while(!isNaN(§5b§))
            {
               while(_loc1_)
               {
                  §@!Z§.§;!,§.camera.§#!=§(§5b§);
                  do
                  {
                     §5b§ = NaN;
                  }
                  while(!_loc1_);
                  
                  if(!(_loc2_ && _loc1_))
                  {
                     addr46:
                     break loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      override public function isReady() : Boolean
      {
         return §@!Z§.§;!,§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            mNextState = StatePlay.§3!?§;
         }
      }
   }
}
