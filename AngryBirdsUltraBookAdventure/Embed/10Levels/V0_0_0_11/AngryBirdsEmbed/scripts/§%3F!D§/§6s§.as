package §?!D§
{
   import §%x§.§#;§;
   
   public class §6s§ extends §]x§
   {
       
      
      protected var §^?§:String = null;
      
      protected var §0b§:Boolean = true;
      
      protected var §`@§:Number = 1.0;
      
      public function §6s§(param1:§#;§, param2:String = null, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            super(param1);
            if(_loc5_ || param3)
            {
               this.§^?§ = param2;
               if(_loc5_ || param3)
               {
               }
               §§goto(addr57);
            }
            this.§0b§ = param3;
         }
         addr57:
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §7C§.initEmptyEnvironment(this.§^?§,this.§0b§);
            if(_loc1_ || this)
            {
               §7C§.camera.initSlowScroll(this.§`@§);
            }
         }
      }
   }
}
