package §2!!§
{
   import §+&§.§-!7§;
   
   public class §<!b§ extends § !X§
   {
       
      
      protected var §9o§:String = null;
      
      protected var §?Z§:Boolean = true;
      
      protected var § !F§:Number = 1.0;
      
      public function §<!b§(param1:§-!7§, param2:String = null, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super(param1);
         }
         do
         {
            this.§9o§ = param2;
            do
            {
               this.§?Z§ = param3;
            }
            while(_loc4_ && param2);
            
         }
         while(_loc4_ && this);
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §+!X§.initEmptyEnvironment(this.§9o§,this.§?Z§);
         }
         do
         {
            §+!X§.camera.initSlowScroll(this.§ !F§);
         }
         while(!(_loc1_ || _loc2_));
         
      }
   }
}
