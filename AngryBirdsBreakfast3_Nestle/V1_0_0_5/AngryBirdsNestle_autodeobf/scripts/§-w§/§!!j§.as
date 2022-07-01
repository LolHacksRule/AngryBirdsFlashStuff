package §-w§
{
   import com.rovio.assets.§<U§;
   import flash.display.MovieClip;
   
   public class §!!j§ implements §"!"§
   {
       
      
      public function §!!j§()
      {
         super();
      }
      
      protected function §5" §(param1:String) : MovieClip
      {
         if(param1 == null || param1 == "")
         {
            return null;
         }
         var _loc2_:Class = §<U§.§5"0§(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         return new _loc2_();
      }
      
      public function solve(param1:String) : MovieClip
      {
         return this.§5" §(param1);
      }
   }
}
