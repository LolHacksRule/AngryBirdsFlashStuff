package § "@§
{
   import §'!A§.§-!S§;
   import §0![§.§7!Y§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   
   public class §#"?§ extends §7!Y§
   {
      
      public static const §'=§:String = "LevelEndFailStatePreview";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §#"?§))
         {
            §'=§ = "LevelEndFailStatePreview";
         }
      }
      
      public function §#"?§(param1:Boolean = false, param2:String = "LevelEndFailStatePreview")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
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
         }
         while(true)
         {
            §?E§ = new §'s§(this);
            while(_loc2_)
            {
               §?E§.init(§`7§.§>"?§.Views.View_LevelEndFailPreview[0]);
               if(!(_loc1_ && _loc2_))
               {
                  return;
               }
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            if("REPLAY" === _loc4_)
            {
               addr56:
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
                  §%!3§.§4[§(StateLevelPreview.§'=§);
                  if(!_loc5_)
                  {
                     mNextState = §%!3§.§'=§;
                     if(_loc6_ || param3)
                     {
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
