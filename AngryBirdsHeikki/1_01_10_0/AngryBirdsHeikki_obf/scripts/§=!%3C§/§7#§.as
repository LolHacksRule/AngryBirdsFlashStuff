package §=!<§
{
   public class §7#§ extends §>"§
   {
       
      
      public function §7#§(param1:§>a§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super(param1);
         }
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.initializeAnimations(param1);
         }
      }
      
      override protected function initializeBirdAnimations() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.initializeBirdAnimations();
            while(true)
            {
               §§push(§§findproperty(§,0§));
               §§push("BIRD_REDBIG_HEIKKI");
               §§push(["normal",["BIRD_REDBIG_1"]]);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(null);
               }
               §§pop().§,0§(§§pop(),§§pop());
               §§goto(addr105);
            }
         }
         addr105:
         while(true)
         {
            §§push(§§findproperty(§,0§));
            §§push("BIRD_BIG_BROTHER");
            §§push(["fly",["BIRD_REDBIG_1"]]);
            if(!_loc1_)
            {
               §§push(null);
            }
            §§pop().§,0§(§§pop(),§§pop());
            if(!(_loc1_ && _loc1_))
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
   }
}
