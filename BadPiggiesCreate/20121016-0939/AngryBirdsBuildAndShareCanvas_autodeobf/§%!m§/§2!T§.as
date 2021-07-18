package §%!m§
{
   import §1!k§.§4!J§;
   import §=b§.§%"2§;
   
   public class §2!T§ extends §4!J§
   {
       
      
      private var §;!?§:Function;
      
      private var §^!#§:Array;
      
      private var §2Z§:Function;
      
      private var §&0§:Array;
      
      public function §2!T§(param1:§%"2§, param2:Function, param3:Array = null, param4:Boolean = false, param5:Function = null, param6:Array = null)
      {
         super(param1);
         this.§;!?§ = param2;
         this.§^!#§ = param3;
         if(param4)
         {
            if(param5 != null)
            {
               this.§2Z§ = param5;
               this.§&0§ = param6;
            }
            else
            {
               this.§2Z§ = param2;
               this.§&0§ = param3;
            }
         }
      }
      
      override protected function rollback() : void
      {
         if(this.§2Z§ != null)
         {
            this.§2Z§.apply(null,this.§&0§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§;!?§ != null)
         {
            this.§;!?§.apply(null,this.§^!#§);
         }
      }
   }
}
