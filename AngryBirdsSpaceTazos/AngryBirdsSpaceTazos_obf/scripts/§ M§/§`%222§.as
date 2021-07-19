package § M§
{
   import §'4§.§^g§;
   import §`!j§.§9"!§;
   
   public class §`"2§ extends §;!!§
   {
       
      
      protected var §;!2§:String = null;
      
      protected var §["E§:Boolean = true;
      
      protected var §,9§:Number = 1.0;
      
      public function §`"2§(param1:§^g§, param2:§9"!§, param3:String = null, param4:Boolean = true)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            super(param1,param2);
            while(true)
            {
               this.§;!2§ = param3;
               while(_loc6_)
               {
                  this.§["E§ = param4;
                  if(!(_loc5_ && param1))
                  {
                     return;
                     addr50:
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §?>§.initializeEmptyEnvironment(this.§;!2§,this.§["E§);
            do
            {
               §?>§.camera.initSlowScroll(this.§,9§);
            }
            while(!_loc1_);
            
         }
      }
   }
}
