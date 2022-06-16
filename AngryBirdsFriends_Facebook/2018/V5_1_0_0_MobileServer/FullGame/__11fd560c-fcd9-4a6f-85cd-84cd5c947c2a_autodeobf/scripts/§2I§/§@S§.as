package §2I§
{
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   
   public class §@S§ implements §[!3§
   {
       
      
      public function §@S§()
      {
         super();
      }
      
      protected function §!$8§(param1:String) : MovieClip
      {
         if(param1 == null || param1 == "")
         {
            return null;
         }
         var _loc2_:Class = §!"f§.§##?§(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         return new _loc2_();
      }
      
      public function solve(param1:String) : MovieClip
      {
         return this.§!$8§(param1);
      }
   }
}
