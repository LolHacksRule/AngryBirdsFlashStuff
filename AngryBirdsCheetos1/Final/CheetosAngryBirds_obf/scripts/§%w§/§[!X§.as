package §%w§
{
   import §?m§.§7?§;
   import §]!F§.§7e§;
   
   public class §[!X§ extends §package§
   {
      
      public static const §9!P§:String = "LevelLoadStateClassic";
      
      private static var §?c§:Number;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §9!P§ = "LevelLoadStateClassic";
         }
      }
      
      public function §[!X§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      public static function §9P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §7e§.§!!@§(§7e§.§3N§());
            do
            {
               §?6§ = §1!7§;
            }
            while(!_loc1_);
            
         }
      }
      
      public static function §&m§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §8!D§ = param1;
            do
            {
               §?6§ = §1!7§;
            }
            while(!(_loc3_ || §[!X§));
            
         }
      }
      
      public static function §]!J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §[!X§))
         {
            if(§7?§.§4!H§.camera)
            {
               while(true)
               {
                  §?c§ = §7?§.§4!H§.camera.manualScale;
                  addr77:
                  while(true)
                  {
                  }
                  addr49:
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  return;
                  addr56:
               }
            }
            while(true)
            {
               §?6§ = §1!7§;
               if(_loc2_ && §[!X§)
               {
                  continue;
               }
               §§goto(addr49);
            }
            §§goto(addr56);
         }
         §§goto(addr77);
      }
      
      override public function initLevelLoad() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §!9§(§7e§.§`!7§(§7e§.§^"§));
            loop0:
            while(!isNaN(§?c§))
            {
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     §7?§.§4!H§.camera.§'!7§(§?c§);
                     do
                     {
                        §?c§ = NaN;
                     }
                     while(_loc1_);
                     
                     if(!_loc1_)
                     {
                        break loop0;
                     }
                     continue loop1;
                  }
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      override public function isReady() : Boolean
      {
         return §7?§.§4!H§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            mNextState = StatePlay.§9!P§;
         }
      }
   }
}
