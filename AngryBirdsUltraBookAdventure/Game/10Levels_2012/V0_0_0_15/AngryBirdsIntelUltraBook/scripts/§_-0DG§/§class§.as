package §_-0Dg§
{
   import §_-TG§.§_-00u§;
   
   public class §class§ extends §_-056§
   {
       
      
      protected var §_-6N§:String = null;
      
      protected var §_-xk§:Boolean = true;
      
      protected var §_-Q3§:Number = 1.0;
      
      public function §class§(param1:§_-00u§, param2:String = null, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super(param1);
         }
         while(true)
         {
            this.§_-6N§ = param2;
            while(_loc5_ || param1)
            {
               this.§_-xk§ = param3;
               if(_loc5_)
               {
                  return;
               }
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-6A§.initEmptyEnvironment(this.§_-6N§,this.§_-xk§);
            do
            {
               §_-6A§.camera.initSlowScroll(this.§_-Q3§);
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
   }
}
