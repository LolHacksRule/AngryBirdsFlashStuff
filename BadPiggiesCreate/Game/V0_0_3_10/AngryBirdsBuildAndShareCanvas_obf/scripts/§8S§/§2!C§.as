package §8S§
{
   import §'!D§.§&s§;
   import §'!D§.§1!J§;
   import §'!D§.§9!W§;
   
   public class §2!C§ extends §1!J§
   {
       
      
      private var §+!r§:Number;
      
      private var §@#§:Number;
      
      public function §2!C§(param1:§&s§, param2:Number, param3:Number)
      {
         super(param1,0);
         §4!V§ = param3 - param2;
         this.§+!r§ = param2;
         this.§@#§ = param3;
      }
      
      override protected function newInstance() : §9!W§
      {
         return new §2!C§(§%!§.clone() as §&s§,this.§+!r§,this.§@#§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 > 0)
         {
            if(param1 < §4!V§)
            {
               §%!§.update(param1 + this.§+!r§);
            }
            else
            {
               §%!§.update(this.§@#§);
            }
         }
         else
         {
            §%!§.update(this.§+!r§);
         }
      }
      
      public function get §#S§() : Number
      {
         return this.§+!r§;
      }
      
      public function get end() : Number
      {
         return this.§@#§;
      }
   }
}
