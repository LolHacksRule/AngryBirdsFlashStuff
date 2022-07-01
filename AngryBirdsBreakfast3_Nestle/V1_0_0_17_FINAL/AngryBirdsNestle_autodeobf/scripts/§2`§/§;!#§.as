package §2`§
{
   import §"!w§.§&>§;
   import §"!w§.§[,§;
   import §%!B§.§0![§;
   import §1![§.§-"5§;
   
   public class §;!#§ extends §&>§
   {
       
      
      protected var §4a§:§0![§;
      
      public function §;!#§(param1:String, param2:String, param3:§0![§, param4:Boolean = true, param5:int = 1)
      {
         super(param1,param2,param4,param5);
         this.§4a§ = param3;
      }
      
      protected function §<!8§() : §-"5§
      {
         return new §-"5§(this.§4a§);
      }
      
      override protected function initPackageLoader() : §[,§
      {
         return this.§<!8§();
      }
   }
}
