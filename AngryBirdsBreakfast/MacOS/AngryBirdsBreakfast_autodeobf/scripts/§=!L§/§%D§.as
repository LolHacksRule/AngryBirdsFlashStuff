package §=!L§
{
   import com.rovio.assets.§<V§;
   import flash.display.MovieClip;
   
   public class §%D§ implements §!!u§
   {
       
      
      public function §%D§()
      {
         super();
      }
      
      protected function §>!Q§(param1:String) : MovieClip
      {
         if(param1 == null || param1 == "")
         {
            return null;
         }
         var _loc2_:Class = §<V§.§"!,§(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         return new _loc2_();
      }
      
      public function solve(param1:String) : MovieClip
      {
         return this.§>!Q§(param1);
      }
   }
}
