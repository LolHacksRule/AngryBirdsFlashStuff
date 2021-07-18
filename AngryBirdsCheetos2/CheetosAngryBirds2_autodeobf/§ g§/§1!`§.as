package § g§
{
   import §,§.§ p§;
   
   public class §1!`§ extends §"!X§
   {
       
      
      protected var §]f§:String = null;
      
      protected var § X§:Boolean = true;
      
      protected var §>!X§:Number = 1.0;
      
      public function §1!`§(param1:§ p§, param2:String = null, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            super(param1);
         }
         do
         {
            this.§]f§ = param2;
            do
            {
               this.§ X§ = param3;
            }
            while(!(_loc5_ || this));
            
         }
         while(!(_loc5_ || this));
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §^!I§.initEmptyEnvironment(this.§]f§,this.§ X§);
         }
         do
         {
            §^!I§.camera.initSlowScroll(this.§>!X§);
         }
         while(_loc1_);
         
      }
   }
}
