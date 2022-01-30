package §!!i§
{
   import com.rovio.assets.§[O§;
   import flash.display.MovieClip;
   
   public class §^7§ implements §0<§
   {
       
      
      public function §^7§()
      {
         super();
      }
      
      protected function §[!^§(param1:String) : MovieClip
      {
         if(param1 == null || param1 == "")
         {
            return null;
         }
         var _loc2_:Class = §[O§.§1s§(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         return new _loc2_();
      }
      
      public function solve(param1:String) : MovieClip
      {
         return this.§[!^§(param1);
      }
   }
}
