package §]§
{
   import §%!0§.§,4§;
   
   public class §[!m§ extends §`!7§
   {
       
      
      protected var §,9§:String = null;
      
      protected var §@"+§:Boolean = true;
      
      protected var §'!u§:Number = 1.0;
      
      public function §[!m§(param1:§,4§, param2:String = null, param3:Boolean = true)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1);
         }
         do
         {
            this.§,9§ = param2;
            do
            {
               this.§@"+§ = param3;
            }
            while(_loc5_ && this);
            
         }
         while(_loc5_);
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §`!G§.initEmptyEnvironment(this.§,9§,this.§@"+§);
         }
         do
         {
            §`!G§.camera.initSlowScroll(this.§'!u§);
         }
         while(_loc2_);
         
      }
   }
}
