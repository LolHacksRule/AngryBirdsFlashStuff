package §4!w§
{
   import §2n§.§8"7§;
   import §8!J§.§8!c§;
   
   public class §,!7§ extends §8!c§
   {
       
      
      private var §8]§:Function;
      
      private var §'!&§:Array;
      
      private var §5u§:Function;
      
      private var §,9§:Array;
      
      public function §,!7§(param1:§8"7§, param2:Function, param3:Array = null, param4:Boolean = false, param5:Function = null, param6:Array = null)
      {
         super(param1);
         this.§8]§ = param2;
         this.§'!&§ = param3;
         if(param4)
         {
            if(param5 != null)
            {
               this.§5u§ = param5;
               this.§,9§ = param6;
            }
            else
            {
               this.§5u§ = param2;
               this.§,9§ = param3;
            }
         }
      }
      
      override protected function rollback() : void
      {
         if(this.§5u§ != null)
         {
            this.§5u§.apply(null,this.§,9§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§8]§ != null)
         {
            this.§8]§.apply(null,this.§'!&§);
         }
      }
   }
}
