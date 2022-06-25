package §91§
{
   import §]!@§.LevelMain;
   
   public class §4!"§ extends BasicController
   {
       
      
      protected var §!!A§:String = null;
      
      protected var §;!7§:Boolean = true;
      
      protected var §]"§:Number = 1.0;
      
      public function §4!"§(param1:LevelMain, param2:String = null, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super(param1);
         }
         do
         {
            this.§!!A§ = param2;
            do
            {
               this.§;!7§ = param3;
            }
            while(_loc4_ && param2);
            
         }
         while(!_loc5_);
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §`s§.initEmptyEnvironment(this.§!!A§,this.§;!7§);
         }
         do
         {
            §`s§.camera.initSlowScroll(this.§]"§);
         }
         while(_loc1_);
         
      }
   }
}
