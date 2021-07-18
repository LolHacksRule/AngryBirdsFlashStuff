package § "@§
{
   import §'!A§.§-!S§;
   import §0![§.§@8§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   
   public class §-m§ extends §@8§
   {
      
      public static const §'=§:String = "LevelEndStatePreview";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'=§ = "LevelEndStatePreview";
         }
      }
      
      public function §-m§(param1:Boolean = false, param2:String = "LevelEndStatePreview")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.init();
            while(true)
            {
               §?E§ = new §'s§(this);
               §§goto(addr78);
            }
         }
         addr78:
         while(true)
         {
            §?E§.init(§`7§.§>"?§.Views.View_LevelEndPreview[0]);
            if(_loc1_ || _loc1_)
            {
               if(!(_loc2_ && _loc1_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_)
         {
            if("REPLAY" === _loc4_)
            {
               addr60:
               §§push(0);
               if(!_loc5_)
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
                  if(_loc5_ || param1)
                  {
                     mNextState = §%!3§.§'=§;
                     if(_loc6_ && this)
                     {
                     }
                     break;
                  }
            }
            return;
         }
         §§goto(addr60);
      }
   }
}
