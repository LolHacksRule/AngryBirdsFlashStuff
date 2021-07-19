package §_-W3§
{
   import §_-OJ§.§_-tL§;
   
   public class §_-Kp§ extends §_-c4§
   {
       
      
      private var §_-Tt§:String = null;
      
      private var §_-KR§:Boolean = true;
      
      public function §_-Kp§(param1:§_-tL§, param2:String = null, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1);
            if(!_loc4_)
            {
               §§goto(addr28);
            }
            §§goto(addr45);
         }
         addr28:
         this.§_-Tt§ = param2;
         if(_loc5_ || param1)
         {
            addr45:
            this.§_-KR§ = param3;
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-Ag§.initEmptyEnvironment(this.§_-Tt§,this.§_-KR§);
            if(!(_loc1_ && this))
            {
               §_-Ag§.camera.initSlowScroll();
            }
         }
      }
   }
}
