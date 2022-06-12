package §3![§
{
   import §9"!§.§9"3§;
   
   public class §1F§ extends §#y§
   {
       
      
      protected var §8!i§:String = null;
      
      protected var §#!<§:Boolean = true;
      
      protected var §4!o§:Number = 1.0;
      
      public function §1F§(param1:§9"3§, param2:String = null, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super(param1);
            while(true)
            {
               this.§8!i§ = param2;
               while(!(_loc4_ && param3))
               {
                  this.§#!<§ = param3;
                  if(!_loc5_)
                  {
                     continue;
                  }
                  return;
                  addr45:
               }
            }
         }
         §§goto(addr45);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §@O§.initEmptyEnvironment(this.§8!i§,this.§#!<§);
            do
            {
               §@O§.camera.initSlowScroll(this.§4!o§);
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
   }
}
