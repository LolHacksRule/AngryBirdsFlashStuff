package §-p§
{
   import §4!<§.§'!S§;
   
   public class §&h§ extends §+"N§
   {
       
      
      protected var §&!M§:String = null;
      
      protected var §!";§:Boolean = true;
      
      protected var §^p§:Number = 1.0;
      
      public function §&h§(param1:§'!S§, param2:String = null, param3:Boolean = true)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1);
            do
            {
               this.§&!M§ = param2;
               do
               {
                  this.§!";§ = param3;
               }
               while(!(_loc4_ || param3));
               
            }
            while(_loc5_ && param1);
            
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            mLevelMain.initEmptyEnvironment(this.§&!M§,this.§!";§);
         }
         do
         {
            mLevelMain.camera.initSlowScroll(this.§^p§);
         }
         while(!(_loc2_ || _loc2_));
         
      }
   }
}
