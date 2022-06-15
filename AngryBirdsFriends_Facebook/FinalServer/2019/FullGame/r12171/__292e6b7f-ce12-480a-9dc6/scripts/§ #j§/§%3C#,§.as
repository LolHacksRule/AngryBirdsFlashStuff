package § #j§
{
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   
   public class §<#,§ implements §]"n§
   {
       
      
      public function §<#,§()
      {
         super();
      }
      
      protected function §7#F§(param1:String) : MovieClip
      {
         if(param1 == null || param1 == "")
         {
            return null;
         }
         var _loc2_:Class = §[a§.§8#k§(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         return new _loc2_();
      }
      
      public function solve(param1:String) : MovieClip
      {
         return this.§7#F§(param1);
      }
   }
}
