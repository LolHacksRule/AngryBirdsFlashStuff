package §^!3§
{
   import §8!K§.§5!Y§;
   import §@L§.§?!'§;
   
   public class §9R§ extends §%z§
   {
       
      
      protected var §^",§:String = null;
      
      protected var §+!s§:Boolean = true;
      
      protected var §,+§:Number = 1.0;
      
      public function §9R§(param1:§?!'§, param2:§5!Y§, param3:String = null, param4:Boolean = true)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super(param1,param2);
            while(true)
            {
               this.§^",§ = param3;
               while(!_loc5_)
               {
                  this.§+!s§ = param4;
                  if(_loc6_)
                  {
                     return;
                     addr40:
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §<Y§.initializeEmptyEnvironment(this.§^",§,this.§+!s§);
            do
            {
               §<Y§.camera.initSlowScroll(this.§,+§);
            }
            while(_loc2_ && _loc2_);
            
         }
      }
   }
}
