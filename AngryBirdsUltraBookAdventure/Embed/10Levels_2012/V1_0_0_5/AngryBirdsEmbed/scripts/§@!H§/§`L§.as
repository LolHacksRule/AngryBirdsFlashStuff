package §@!H§
{
   import §?b§.§7!,§;
   
   public class §`L§ extends §`r§
   {
       
      
      protected var §%=§:String = null;
      
      protected var §^u§:Boolean = true;
      
      protected var §implements§:Number = 1.0;
      
      public function §`L§(param1:§7!,§, param2:String = null, param3:Boolean = true)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super(param1);
            if(_loc4_)
            {
               this.§%=§ = param2;
               if(_loc5_ && param2)
               {
               }
               §§goto(addr51);
            }
            this.§^u§ = param3;
         }
         addr51:
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §4!%§.initEmptyEnvironment(this.§%=§,this.§^u§);
            if(!(_loc2_ && this))
            {
               §4!%§.camera.initSlowScroll(this.§implements§);
            }
         }
      }
   }
}
