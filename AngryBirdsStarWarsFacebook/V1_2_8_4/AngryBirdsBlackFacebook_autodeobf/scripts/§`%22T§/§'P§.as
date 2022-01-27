package §`"T§
{
   import com.rovio.assets.§%!Z§;
   import flash.display.MovieClip;
   
   public class §'P§ implements §'!s§
   {
       
      
      public function §'P§()
      {
         super();
      }
      
      protected function §=[§(param1:String) : MovieClip
      {
         if(param1 == null || param1 == "")
         {
            return null;
         }
         var _loc2_:Class = §%!Z§.§;",§(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         return new _loc2_();
      }
      
      public function solve(param1:String) : MovieClip
      {
         return this.§=[§(param1);
      }
   }
}
