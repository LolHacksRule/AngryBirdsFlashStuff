package §6W§
{
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   
   public class §=#x§ implements §^"t§
   {
       
      
      public function §=#x§()
      {
         super();
      }
      
      protected function §2#W§(param1:String) : MovieClip
      {
         if(param1 == null || param1 == "")
         {
            return null;
         }
         var _loc2_:Class = §2"O§.§`>§(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         return new _loc2_();
      }
      
      public function solve(param1:String) : MovieClip
      {
         return this.§2#W§(param1);
      }
   }
}
