package §<#o§
{
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   
   public class §5$A§ implements §2!J§
   {
       
      
      public function §5$A§()
      {
         super();
      }
      
      protected function §<#G§(param1:String) : MovieClip
      {
         if(param1 == null || param1 == "")
         {
            return null;
         }
         var _loc2_:Class = §6$A§.§1!m§(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         return new _loc2_();
      }
      
      public function solve(param1:String) : MovieClip
      {
         return this.§<#G§(param1);
      }
   }
}
