package §?"-§
{
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §;i§ extends §`"%§
   {
       
      
      public function §;i§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function isBackground(param1:String) : Boolean
      {
         if(param1 == "MovieClip_BackgroundBespin")
         {
            return true;
         }
         return super.isBackground(param1);
      }
   }
}
