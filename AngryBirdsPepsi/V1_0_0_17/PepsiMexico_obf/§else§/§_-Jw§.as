package §else§
{
   import §_-Qx§.§_-Sf§;
   import §_-hU§.§_-MB§;
   
   public class §_-Jw§ extends §_-dT§
   {
      
      public static const §_-Az§:String = "LevelLoadStateClassic";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-Az§ = "LevelLoadStateClassic";
         }
      }
      
      public function §_-Jw§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      public static function §_-GL§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §_-Sf§.§_-JA§(§_-Sf§.§_-ZP§());
            if(_loc2_)
            {
               §_-Ec§ = §_-Cw§;
            }
         }
      }
      
      public static function §_-Y3§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §_-XM§ = param1;
            if(!(_loc2_ && _loc2_))
            {
               §_-Ec§ = §_-Cw§;
            }
         }
      }
      
      public static function §_-h5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §_-Ec§ = §_-Cw§;
         }
      }
      
      override public function initLevelLoad() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §_-XZ§(§_-Sf§.§_-L0§(§_-Sf§.§_-vj§));
            if(!_loc1_)
            {
               addr43:
               §_-Sf§.§_-JA§(§_-Sf§.§_-vj§);
            }
            return;
         }
         §§goto(addr43);
      }
      
      override public function isReady() : Boolean
      {
         return §_-MB§.§_-A7§.§_-57§;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            mNextState = StatePlay.§_-Az§;
         }
      }
   }
}
