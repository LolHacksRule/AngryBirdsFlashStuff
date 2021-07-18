package §5#§
{
   import §<!<§.§7E§;
   
   public class §]]§ extends §?o§
   {
       
      
      protected var §,A§:String = null;
      
      protected var §6!0§:Boolean = true;
      
      protected var § !'§:Number = 1.0;
      
      public function §]]§(param1:§7E§, param2:String = null, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            super(param1);
            if(_loc5_)
            {
               §§goto(addr39);
            }
            §§goto(addr49);
         }
         addr39:
         this.§,A§ = param2;
         if(!(_loc4_ && param2))
         {
            addr49:
            this.§6!0§ = param3;
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-n§.initEmptyEnvironment(this.§,A§,this.§6!0§);
            if(!(_loc1_ && _loc1_))
            {
               addr42:
               §-n§.camera.initSlowScroll(this.§ !'§);
            }
            return;
         }
         §§goto(addr42);
      }
   }
}
