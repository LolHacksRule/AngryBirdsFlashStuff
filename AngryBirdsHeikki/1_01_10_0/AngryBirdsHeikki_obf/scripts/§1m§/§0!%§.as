package §1m§
{
   import §"!I§.§^!2§;
   import §3!b§.§;F§;
   
   public class §0!%§ extends §;F§
   {
       
      
      public function §0!%§(param1:§^!2§, param2:String = null, param3:Boolean = true, param4:Number = 1.0)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param2,param3);
         }
         do
         {
            §1!6§ = param4;
         }
         while(_loc5_);
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §=!V§.initEmptyEnvironment(§!A§,§5B§);
            while(true)
            {
               §=!V§.camera.initSlowScroll(§1!6§);
               §§goto(addr63);
            }
         }
         addr63:
         while(true)
         {
            §=!V§.camera.manualScale = 0.4;
            if(_loc1_ || _loc1_)
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
   }
}
