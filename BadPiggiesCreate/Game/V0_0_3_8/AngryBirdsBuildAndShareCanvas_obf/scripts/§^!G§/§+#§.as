package §^!G§
{
   import §6P§.§1"#§;
   import §]+§.§"G§;
   
   public class §+#§ extends §1"#§
   {
       
      
      private var §!!!§:Function;
      
      private var §5p§:Array;
      
      private var §%9§:Function;
      
      private var §3F§:Array;
      
      public function §+#§(param1:§"G§, param2:Function, param3:Array = null, param4:Boolean = false, param5:Function = null, param6:Array = null)
      {
         super(param1);
         this.§!!!§ = param2;
         this.§5p§ = param3;
         if(param4)
         {
            if(param5 != null)
            {
               this.§%9§ = param5;
               this.§3F§ = param6;
            }
            else
            {
               this.§%9§ = param2;
               this.§3F§ = param3;
            }
         }
      }
      
      override protected function rollback() : void
      {
         if(this.§%9§ != null)
         {
            this.§%9§.apply(null,this.§3F§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§!!!§ != null)
         {
            this.§!!!§.apply(null,this.§5p§);
         }
      }
   }
}
