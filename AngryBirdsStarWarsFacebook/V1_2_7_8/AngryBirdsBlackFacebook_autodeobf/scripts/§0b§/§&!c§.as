package §0b§
{
   import com.rovio.assets.§5"]§;
   import flash.display.MovieClip;
   
   public class §&!c§ implements §`!S§
   {
       
      
      public function §&!c§()
      {
         super();
      }
      
      protected function §+"-§(param1:String) : MovieClip
      {
         if(param1 == null || param1 == "")
         {
            return null;
         }
         var _loc2_:Class = §5"]§.§4!K§(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         return new _loc2_();
      }
      
      public function solve(param1:String) : MovieClip
      {
         return this.§+"-§(param1);
      }
   }
}
