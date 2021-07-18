package §9! §
{
   import § `§.§2w§;
   import § `§.§5L§;
   
   public class §%e§ extends §5L§
   {
       
      
      public function §%e§(param1:§2w§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
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
            while(true)
            {
               §3j§("CHEETOS_EXPLOSION",["CHEETOS_BAG_EXPLOSION1","CHEETOS_BAG_EXPLOSION2","CHEETOS_BAG_EXPLOSION3","CHEETOS_BAG_EXPLOSION4","CHEETOS_BAG_EXPLOSION5","CHEETOS_BAG_EXPLOSION6"]);
               addr72:
               while(_loc2_)
               {
               }
            }
         }
         while(true)
         {
            §3j§("CHEESE_PARTICLE",["CHEESE_PARTICLE"]);
            while(!_loc3_)
            {
               §3j§("CHEETOS_PACK_GLOW",["CHEETOS_PACK_GLOW"]);
               if(_loc2_)
               {
                  return;
               }
            }
            §§goto(addr72);
         }
      }
      
      override protected function initializeBirdAnimations() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.initializeBirdAnimations();
            do
            {
               §§push(§§findproperty(§5U§));
               §§push("BIRD_CHEETOS_BAG");
               §§push(["normal",["CHEETOS_PACK_TURKEY_BASIC","CHEETOS_PACK_TURKEY_2"]]);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(null);
               }
               §§pop().§5U§(§§pop(),§§pop());
            }
            while(_loc2_);
            
         }
      }
   }
}
