package §8S§
{
   import §'!D§.§&s§;
   import §'!D§.§1!J§;
   import §'!D§.§9!W§;
   
   public class §3!C§ extends §1!J§
   {
       
      
      private var §0!>§:Number;
      
      private var §9!i§:Number;
      
      public function §3!C§(param1:§&s§, param2:Number, param3:Number)
      {
         super(param1,0);
         §4!V§ = param2 + param1.duration + param3;
         this.§9!i§ = param2;
         this.§0!>§ = param3;
      }
      
      public function get §!!R§() : Number
      {
         return this.§9!i§;
      }
      
      override protected function newInstance() : §9!W§
      {
         return new §3!C§(§%!§.clone() as §&s§,this.§9!i§,this.§0!>§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §%!§.update(param1 - this.§9!i§);
      }
      
      public function get §[h§() : Number
      {
         return this.§0!>§;
      }
   }
}
