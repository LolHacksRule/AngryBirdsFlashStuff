package §>!1§
{
   import §'!D§.§08§;
   import §5G§.§?,§;
   import §>M§.§<6§;
   import §>P§.§5!§;
   import flash.display.MovieClip;
   
   public class §1!+§ extends §<6§
   {
       
      
      private var § !$§:§?,§;
      
      public function §1!+§(param1:XML, param2:§<6§, param3:§5!§, param4:§?,§, param5:MovieClip = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param1)
         {
            super(param1,param2,param3,param5);
            do
            {
               this.§ !$§ = param4;
            }
            while(!(_loc7_ || this));
            
         }
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§08§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§ !$§.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
