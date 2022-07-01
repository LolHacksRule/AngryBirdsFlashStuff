package §=!k§
{
   import com.rovio.assets.§2"&§;
   import flash.display.MovieClip;
   
   public class § z§ implements §;z§
   {
       
      
      public function § z§()
      {
         super();
      }
      
      protected function §&"'§(param1:String) : MovieClip
      {
         if(param1 == null || param1 == "")
         {
            return null;
         }
         var _loc2_:Class = §2"&§.§<$§(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         return new _loc2_();
      }
      
      public function solve(param1:String) : MovieClip
      {
         return this.§&"'§(param1);
      }
   }
}
