package §3!b§
{
   import §"!I§.§^!2§;
   
   public class §;F§ extends §^!N§
   {
       
      
      protected var §!A§:String = null;
      
      protected var §5B§:Boolean = true;
      
      protected var §1!6§:Number = 1.0;
      
      public function §;F§(param1:§^!2§, param2:String = null, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1);
            while(true)
            {
               this.§!A§ = param2;
               while(!(_loc4_ && param3))
               {
                  this.§5B§ = param3;
                  if(!_loc5_)
                  {
                     continue;
                  }
                  return;
                  addr40:
               }
            }
         }
         §§goto(addr40);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §=!V§.initEmptyEnvironment(this.§!A§,this.§5B§);
            do
            {
               §=!V§.camera.initSlowScroll(this.§1!6§);
            }
            while(_loc1_);
            
         }
      }
   }
}
