package §!X§
{
   import com.rovio.assets.§ !h§;
   import flash.display.MovieClip;
   
   public class §;">§ implements §&"E§
   {
       
      
      public function §;">§()
      {
         super();
      }
      
      protected function §?z§(param1:String) : MovieClip
      {
         if(param1 == null || param1 == "")
         {
            return null;
         }
         var _loc2_:Class = § !h§.§["3§(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         return new _loc2_();
      }
      
      public function solve(param1:String) : MovieClip
      {
         return this.§?z§(param1);
      }
   }
}
