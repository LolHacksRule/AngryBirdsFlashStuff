package §]C§
{
   import §9N§.§9!%§;
   
   public class §^]§ extends §5_§
   {
       
      
      private var §8!W§:String = null;
      
      private var §@!3§:Boolean = true;
      
      protected var §0!C§:Number = 1.0;
      
      public function §^]§(param1:§9!%§, param2:String = null, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param1);
            while(true)
            {
               this.§8!W§ = param2;
               while(!(_loc4_ && param3))
               {
                  this.§@!3§ = param3;
                  if(_loc4_)
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
         if(!_loc1_)
         {
            §8@§.initEmptyEnvironment(this.§8!W§,this.§@!3§);
         }
         do
         {
            §8@§.camera.initSlowScroll(this.§0!C§);
         }
         while(_loc1_ && _loc2_);
         
      }
   }
}
