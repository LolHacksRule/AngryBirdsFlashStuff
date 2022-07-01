package §^"!§
{
   import com.rovio.assets.§=!V§;
   import flash.display.MovieClip;
   
   public class §;,§ implements §>!n§
   {
       
      
      public function §;,§()
      {
         super();
      }
      
      protected function §-!C§(param1:String) : MovieClip
      {
         if(param1 == null || param1 == "")
         {
            return null;
         }
         var _loc2_:Class = §=!V§.§?!O§(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         return new _loc2_();
      }
      
      public function solve(param1:String) : MovieClip
      {
         return this.§-!C§(param1);
      }
   }
}
