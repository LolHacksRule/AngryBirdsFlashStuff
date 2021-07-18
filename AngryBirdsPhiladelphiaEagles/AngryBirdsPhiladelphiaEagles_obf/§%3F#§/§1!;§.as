package §?#§
{
   import §9T§.§1r§;
   
   public class §1!;§ extends §1q§
   {
       
      
      protected var §!L§:String = null;
      
      protected var §?O§:Boolean = true;
      
      protected var §<!4§:Number = 1.0;
      
      public function §1!;§(param1:§1r§, param2:String = null, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            super(param1);
            while(true)
            {
               this.§!L§ = param2;
               while(_loc5_)
               {
                  this.§?O§ = param3;
                  if(_loc5_ || param2)
                  {
                     return;
                     addr50:
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §;§.initEmptyEnvironment(this.§!L§,this.§?O§);
            do
            {
               §;§.camera.initSlowScroll(this.§<!4§);
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
   }
}
