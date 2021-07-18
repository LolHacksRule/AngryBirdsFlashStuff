package §"a§
{
   import §?m§.§+"2§;
   import §^#>§.§#_§;
   
   public class §`!,§ extends §3!z§
   {
       
      
      protected var §"!n§:String = null;
      
      protected var §!"y§:Boolean = true;
      
      protected var §<!C§:Number = 1.0;
      
      public function §`!,§(param1:§#_§, param2:§+"2§, param3:String = null, param4:Boolean = true)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param2);
            do
            {
               this.§"!n§ = param3;
               do
               {
                  this.§!"y§ = param4;
               }
               while(_loc5_ && this);
               
            }
            while(!_loc6_);
            
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §2#G§.initializeEmptyEnvironment(this.§"!n§,this.§!"y§);
            do
            {
               §2#G§.camera.initSlowScroll(this.§<!C§);
            }
            while(_loc2_ && _loc1_);
            
         }
      }
   }
}
