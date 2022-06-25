package §9!H§
{
   import §?A§.LevelMain;
   
   public class §@1§ extends BasicController
   {
       
      
      protected var §]A§:String = null;
      
      protected var §#!c§:Boolean = true;
      
      protected var §>K§:Number = 1.0;
      
      public function §@1§(param1:LevelMain, param2:String = null, param3:Boolean = true)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super(param1);
         }
         while(true)
         {
            this.§]A§ = param2;
            while(!_loc5_)
            {
               this.§#!c§ = param3;
               if(_loc4_)
               {
                  return;
               }
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §6f§.initEmptyEnvironment(this.§]A§,this.§#!c§);
            do
            {
               §6f§.camera.initSlowScroll(this.§>K§);
            }
            while(!_loc1_);
            
         }
      }
   }
}
