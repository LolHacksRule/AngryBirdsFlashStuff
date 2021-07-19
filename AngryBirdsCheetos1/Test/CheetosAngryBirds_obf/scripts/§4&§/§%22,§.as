package §4&§
{
   import §9t§.§&!W§;
   import §9t§.§=!>§;
   
   public class §",§ extends §&!W§
   {
       
      
      public function §",§(param1:§=!>§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super(param1);
         }
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super.initializeAnimations(param1);
            loop0:
            while(true)
            {
               §var §("CHEETOS_EXPLOSION",["CHEETOS_BAG_EXPLOSION1","CHEETOS_BAG_EXPLOSION2","CHEETOS_BAG_EXPLOSION3","CHEETOS_BAG_EXPLOSION4","CHEETOS_BAG_EXPLOSION5","CHEETOS_BAG_EXPLOSION6"]);
               do
               {
                  §var §("CHEESE_PARTICLE",["CHEESE_PARTICLE"]);
                  continue loop0;
               }
               while(_loc2_ && this);
               
            }
         }
      }
      
      override protected function initializeBirdAnimations() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.initializeBirdAnimations();
            do
            {
               §§push(§§findproperty(§3!F§));
               §§push("BIRD_CHEETOS_BAG");
               §§push(["normal",["CHEETOS_PACK_RUSSIA_BASIC","CHEETOS_PACK_RUSSIA_2"]]);
               if(_loc1_)
               {
                  §§push(null);
               }
               §§pop().§3!F§(§§pop(),§§pop());
            }
            while(_loc2_);
            
         }
      }
   }
}
