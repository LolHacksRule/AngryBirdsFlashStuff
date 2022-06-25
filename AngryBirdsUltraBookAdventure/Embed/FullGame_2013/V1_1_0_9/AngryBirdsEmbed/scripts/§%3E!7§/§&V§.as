package §>!7§
{
   import §6A§.§ !§;
   
   public class §&V§ extends §!q§
   {
       
      
      protected var §@t§:String = null;
      
      protected var §var §:Boolean = true;
      
      protected var §0+§:Number = 1.0;
      
      public function §&V§(param1:§ !§, param2:String = null, param3:Boolean = true)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1);
            if(!(_loc5_ && param3))
            {
               this.§@t§ = param2;
               if(!_loc4_)
               {
               }
               §§goto(addr46);
            }
            this.§var § = param3;
         }
         addr46:
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §?V§.initEmptyEnvironment(this.§@t§,this.§var §);
            if(_loc1_)
            {
               §?V§.camera.initSlowScroll(this.§0+§);
            }
         }
      }
   }
}
