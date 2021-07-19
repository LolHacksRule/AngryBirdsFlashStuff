package §!F§
{
   import §[x§.§2^§;
   
   public class §>J§ extends §`!&§
   {
       
      
      protected var §2T§:String = null;
      
      protected var §9I§:Boolean = true;
      
      protected var §3C§:Number = 1.0;
      
      public function §>J§(param1:§2^§, param2:String = null, param3:Boolean = true)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            super(param1);
            while(true)
            {
               this.§2T§ = param2;
               §§goto(addr56);
            }
         }
         addr56:
         while(true)
         {
            this.§9I§ = param3;
            if(_loc4_ || param1)
            {
               if(_loc4_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §1! §.initEmptyEnvironment(this.§2T§,this.§9I§);
         }
         do
         {
            §1! §.camera.initSlowScroll(this.§3C§);
         }
         while(!_loc2_);
         
      }
   }
}
