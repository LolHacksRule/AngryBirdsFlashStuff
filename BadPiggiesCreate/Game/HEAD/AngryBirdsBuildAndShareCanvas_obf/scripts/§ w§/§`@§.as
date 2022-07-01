package § w§
{
   import §%!n§.§;!'§;
   import §`!#§.§[!s§;
   
   public class §`@§ extends §[!s§
   {
       
      
      private var §9?§:Function;
      
      private var §,!r§:Array;
      
      private var §@!'§:Function;
      
      private var §6![§:Array;
      
      public function §`@§(param1:§;!'§, param2:Function, param3:Array = null, param4:Boolean = false, param5:Function = null, param6:Array = null)
      {
         super(param1);
         this.§9?§ = param2;
         this.§,!r§ = param3;
         if(param4)
         {
            if(param5 != null)
            {
               this.§@!'§ = param5;
               this.§6![§ = param6;
            }
            else
            {
               this.§@!'§ = param2;
               this.§6![§ = param3;
            }
         }
      }
      
      override protected function rollback() : void
      {
         if(this.§@!'§ != null)
         {
            this.§@!'§.apply(null,this.§6![§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§9?§ != null)
         {
            this.§9?§.apply(null,this.§,!r§);
         }
      }
   }
}
