package §7;§
{
   import com.rovio.assets.§1!C§;
   import flash.display.MovieClip;
   
   public class §%d§ implements §'!K§
   {
       
      
      public function §%d§()
      {
         super();
      }
      
      protected function §20§(param1:String) : MovieClip
      {
         if(param1 == null || param1 == "")
         {
            return null;
         }
         var _loc2_:Class = §1!C§.§"!&§(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         return new _loc2_();
      }
      
      public function solve(param1:String) : MovieClip
      {
         return this.§20§(param1);
      }
   }
}
