package § "A§
{
   import com.rovio.assets.§1!h§;
   import flash.display.MovieClip;
   
   public class §[B§ implements §@!R§
   {
       
      
      public function §[B§()
      {
         super();
      }
      
      protected function §,"6§(param1:String) : MovieClip
      {
         if(param1 == null || param1 == "")
         {
            return null;
         }
         var _loc2_:Class = §1!h§.§4!D§(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         return new _loc2_();
      }
      
      public function solve(param1:String) : MovieClip
      {
         return this.§,"6§(param1);
      }
   }
}
