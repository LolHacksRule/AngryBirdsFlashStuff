package § X§
{
   import com.rovio.assets.§2!3§;
   import flash.display.MovieClip;
   
   public class §<T§ implements § m§
   {
       
      
      public function §<T§()
      {
         super();
      }
      
      protected function §<"D§(param1:String) : MovieClip
      {
         if(param1 == null || param1 == "")
         {
            return null;
         }
         var _loc2_:Class = §2!3§.dynamic(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         return new _loc2_();
      }
      
      public function solve(param1:String) : MovieClip
      {
         return this.§<"D§(param1);
      }
   }
}
