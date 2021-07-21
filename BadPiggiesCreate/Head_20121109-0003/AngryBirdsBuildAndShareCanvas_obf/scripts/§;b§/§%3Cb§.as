package §;b§
{
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §@y§.§0=§;
   import §^U§.§7!r§;
   
   public class §<b§ extends §7!r§
   {
      
      public static const §%!Q§:String = "LevelEndFailStatePreview";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §<b§))
         {
            §%!Q§ = "LevelEndFailStatePreview";
         }
      }
      
      public function §<b§(param1:Boolean = false, param2:String = "LevelEndFailStatePreview")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.init();
            do
            {
               §`!v§ = new §>!V§(this);
               do
               {
                  §`!v§.init(§]!M§.§"!V§.Views.View_LevelEndFailPreview[0]);
               }
               while(_loc2_ && this);
               
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || param2)
         {
            if("REPLAY" === _loc4_)
            {
               addr56:
               §§push(0);
               if(!_loc6_)
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
                  if(!_loc5_)
                  {
                     mNextState = §@"0§.§%!Q§;
                     if(!_loc5_)
                     {
                        break;
                     }
                     break;
                  }
            }
            return;
         }
         §§goto(addr56);
      }
   }
}
