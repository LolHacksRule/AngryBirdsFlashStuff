package §;'§
{
   import §5!V§.§!w§;
   
   public class §7"'§ extends §"!&§
   {
       
      
      protected var §[!i§:String = null;
      
      protected var §5!A§:Boolean = true;
      
      protected var §3!=§:Number = 1.0;
      
      public function §7"'§(param1:§!w§, param2:String = null, param3:Boolean = true)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1);
         }
         while(true)
         {
            this.§[!i§ = param2;
            while(_loc4_)
            {
               this.§5!A§ = param3;
               if(!(_loc5_ && param2))
               {
                  return;
               }
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §9q§.initEmptyEnvironment(this.§[!i§,this.§5!A§);
            do
            {
               §9q§.camera.initSlowScroll(this.§3!=§);
            }
            while(_loc2_);
            
         }
      }
   }
}
