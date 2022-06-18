package §`!u§
{
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   
   public class §?!4§ implements §,"4§
   {
       
      
      public function §?!4§()
      {
         super();
      }
      
      protected function §8!T§(param1:String) : MovieClip
      {
         if(param1 == null || param1 == "")
         {
            return null;
         }
         var _loc2_:Class = §=@§.§9!x§(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         return new _loc2_();
      }
      
      public function solve(param1:String) : MovieClip
      {
         return this.§8!T§(param1);
      }
   }
}
