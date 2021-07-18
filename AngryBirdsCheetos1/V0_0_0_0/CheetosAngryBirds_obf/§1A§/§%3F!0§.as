package §1A§
{
   import §4W§.§!]§;
   import §4W§.§3!@§;
   
   public class §?!0§ extends §3!@§
   {
       
      
      public function §?!0§(param1:§!]§)
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
         if(_loc2_)
         {
            super.initializeAnimations(param1);
            loop0:
            while(true)
            {
               §"=§("CHEETOS_EXPLOSION",["CHEETOS_BAG_EXPLOSION1","CHEETOS_BAG_EXPLOSION2","CHEETOS_BAG_EXPLOSION3","CHEETOS_BAG_EXPLOSION4","CHEETOS_BAG_EXPLOSION5","CHEETOS_BAG_EXPLOSION6"]);
               while(true)
               {
                  §"=§("CHEESE_PARTICLE",["CHEESE_PARTICLE"]);
                  continue loop0;
                  addr31:
                  if(!(_loc3_ && param1))
                  {
                     return;
                     addr48:
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      override protected function initializeBirdAnimations() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.initializeBirdAnimations();
         }
         do
         {
            §§push(§§findproperty(§3Z§));
            §§push("BIRD_CHEETOS_BAG");
            §§push(["normal",["CHEETOS_PACK_TURKEY_BASIC","CHEETOS_PACK_TURKEY_2"]]);
            if(_loc1_)
            {
               §§push(null);
            }
            §§pop().§3Z§(§§pop(),§§pop());
         }
         while(_loc2_);
         
      }
   }
}
