package §-!@§
{
   import §!X§.§86§;
   
   public class §+!J§ extends §=0§
   {
       
      
      protected var §%!%§:String = null;
      
      protected var § ![§:Boolean = true;
      
      protected var §>!B§:Number = 1.0;
      
      public function §+!J§(param1:§86§, param2:String = null, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1);
            while(true)
            {
               this.§%!%§ = param2;
               loop1:
               while(_loc5_)
               {
                  while(true)
                  {
                     this.§ ![§ = param3;
                     if(!_loc4_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §>`§.initEmptyEnvironment(this.§%!%§,this.§ ![§);
            do
            {
               §>`§.camera.initSlowScroll(this.§>!B§);
            }
            while(!(_loc2_ || this));
            
         }
      }
   }
}
