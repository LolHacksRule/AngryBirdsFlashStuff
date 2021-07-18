package §!y§
{
   import §%w§.§;s§;
   import §,j§.§1-§;
   import §0F§.§'j§;
   import §1§.§'n§;
   import flash.display.MovieClip;
   
   public class §-!L§ extends §1-§
   {
       
      
      private var §8w§:§;s§;
      
      public function §-!L§(param1:XML, param2:§1-§, param3:§'j§, param4:§;s§, param5:MovieClip = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super(param1,param2,param3,param5);
         }
         do
         {
            this.§8w§ = param4;
         }
         while(_loc6_ && param2);
         
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§'n§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            this.§8w§.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
