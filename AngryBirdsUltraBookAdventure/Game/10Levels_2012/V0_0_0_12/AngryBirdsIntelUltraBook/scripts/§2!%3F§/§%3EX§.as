package §2!?§
{
   import §2!H§.LevelMain;
   
   public class §>X§ extends BasicController
   {
       
      
      protected var §''§:String = null;
      
      protected var §#p§:Boolean = true;
      
      protected var §7!F§:Number = 1.0;
      
      public function §>X§(param1:LevelMain, param2:String = null, param3:Boolean = true)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            super(param1);
            while(true)
            {
               this.§''§ = param2;
               §§goto(addr71);
            }
         }
         addr71:
         while(true)
         {
            this.§#p§ = param3;
            if(!(_loc5_ && param3))
            {
               if(!(_loc5_ && param3))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §"!>§.initEmptyEnvironment(this.§''§,this.§#p§);
         }
         do
         {
            §"!>§.camera.initSlowScroll(this.§7!F§);
         }
         while(_loc2_ && _loc1_);
         
      }
   }
}
