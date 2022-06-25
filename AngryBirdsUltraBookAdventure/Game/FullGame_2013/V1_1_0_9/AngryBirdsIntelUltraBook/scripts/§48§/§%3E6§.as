package §48§
{
   import §40§.§5G§;
   
   public class §>6§ extends §?x§
   {
       
      
      protected var §<H§:String = null;
      
      protected var §;!G§:Boolean = true;
      
      protected var §>=§:Number = 1.0;
      
      public function §>6§(param1:§5G§, param2:String = null, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            super(param1);
            while(true)
            {
               this.§<H§ = param2;
               loop1:
               while(!(_loc4_ && param2))
               {
                  while(true)
                  {
                     this.§;!G§ = param3;
                     if(!(_loc4_ && this))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr72);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §#!U§.initEmptyEnvironment(this.§<H§,this.§;!G§);
         }
         do
         {
            §#!U§.camera.initSlowScroll(this.§>=§);
         }
         while(!(_loc1_ || _loc2_));
         
      }
   }
}
