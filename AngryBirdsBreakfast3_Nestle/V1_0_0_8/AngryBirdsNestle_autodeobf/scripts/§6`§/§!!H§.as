package §6`§
{
   import §#!n§.§+"3§;
   import §5h§.§8!A§;
   import §5h§.§[!;§;
   import §8!e§.§3"&§;
   
   public class §!!H§ extends §8!A§
   {
       
      
      protected var §!3§:§3"&§;
      
      public function §!!H§(param1:String, param2:String, param3:§3"&§, param4:Boolean = true, param5:int = 1)
      {
         super(param1,param2,param4,param5);
         this.§!3§ = param3;
      }
      
      protected function §>!j§() : §+"3§
      {
         return new §+"3§(this.§!3§);
      }
      
      override protected function initPackageLoader() : §[!;§
      {
         return this.§>!j§();
      }
   }
}
