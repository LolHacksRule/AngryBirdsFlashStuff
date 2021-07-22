package §&#k§
{
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   
   public class §2$ § implements §="F§
   {
       
      
      public function §2$ §()
      {
         super();
      }
      
      protected function §>!'§(param1:String) : MovieClip
      {
         if(param1 == null || param1 == "")
         {
            return null;
         }
         var _loc2_:Class = §@`§.§4!i§(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         return new _loc2_();
      }
      
      public function solve(param1:String) : MovieClip
      {
         return this.§>!'§(param1);
      }
   }
}
