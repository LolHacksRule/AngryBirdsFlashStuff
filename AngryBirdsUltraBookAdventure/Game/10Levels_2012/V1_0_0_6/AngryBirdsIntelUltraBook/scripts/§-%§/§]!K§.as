package §-%§
{
   import §2_§.§'u§;
   
   public class §]!K§ extends §+c§
   {
       
      
      protected var §<t§:String = null;
      
      protected var §8m§:Boolean = true;
      
      protected var §5%§:Number = 1.0;
      
      public function §]!K§(param1:§'u§, param2:String = null, param3:Boolean = true)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1);
            do
            {
               this.§<t§ = param2;
               do
               {
                  this.§8m§ = param3;
               }
               while(_loc5_ && param3);
               
            }
            while(!_loc4_);
            
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §#!3§.initEmptyEnvironment(this.§<t§,this.§8m§);
            do
            {
               §#!3§.camera.initSlowScroll(this.§5%§);
            }
            while(!_loc1_);
            
         }
      }
   }
}
