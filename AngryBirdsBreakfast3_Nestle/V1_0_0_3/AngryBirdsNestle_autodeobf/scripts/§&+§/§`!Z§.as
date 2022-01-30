package §&+§
{
   import com.rovio.assets.§^1§;
   import flash.display.MovieClip;
   
   public class §`!Z§ implements §2;§
   {
       
      
      public function §`!Z§()
      {
         super();
      }
      
      protected function §2!P§(param1:String) : MovieClip
      {
         if(param1 == null || param1 == "")
         {
            return null;
         }
         var _loc2_:Class = §^1§.§+!I§(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         return new _loc2_();
      }
      
      public function solve(param1:String) : MovieClip
      {
         return this.§2!P§(param1);
      }
   }
}
