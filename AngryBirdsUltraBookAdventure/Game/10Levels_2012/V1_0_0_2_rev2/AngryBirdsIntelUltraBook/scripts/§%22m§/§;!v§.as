package §"m§
{
   import §,!5§.§^g§;
   
   public class §;!v§ extends §1!%§
   {
       
      
      protected var §+!m§:String = null;
      
      protected var §^!m§:Boolean = true;
      
      protected var §4![§:Number = 1.0;
      
      public function §;!v§(param1:§^g§, param2:String = null, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super(param1);
         }
         do
         {
            this.§+!m§ = param2;
            do
            {
               this.§^!m§ = param3;
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
            §?l§.initEmptyEnvironment(this.§+!m§,this.§^!m§);
         }
         do
         {
            §?l§.camera.initSlowScroll(this.§4![§);
         }
         while(!(_loc1_ || _loc2_));
         
      }
   }
}
