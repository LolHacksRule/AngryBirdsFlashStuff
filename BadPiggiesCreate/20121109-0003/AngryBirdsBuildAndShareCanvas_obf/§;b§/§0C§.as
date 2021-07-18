package §;b§
{
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §@y§.§0=§;
   import §^U§.§<"5§;
   
   public class §0C§ extends §<"5§
   {
      
      public static const §%!Q§:String = "LevelEndStatePreview";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §0C§)
         {
            §%!Q§ = "LevelEndStatePreview";
         }
      }
      
      public function §0C§(param1:Boolean = false, param2:String = "LevelEndStatePreview")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
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
            while(true)
            {
               §`!v§ = new §>!V§(this);
               §§goto(addr64);
            }
         }
         addr64:
         while(true)
         {
            §`!v§.init(§]!M§.§"!V§.Views.View_LevelEndPreview[0]);
            if(!_loc1_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc5_ && param3))
         {
            if("REPLAY" === _loc4_)
            {
               addr66:
               §§push(0);
               if(_loc5_)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  §@"0§.§%P§(StateLevelPreview.§%!Q§);
                  if(_loc6_ || param2)
                  {
                     mNextState = §@"0§.§%!Q§;
                     if(!(_loc5_ && param1))
                     {
                        break;
                     }
                     break;
                  }
            }
            return;
         }
         §§goto(addr66);
      }
   }
}
