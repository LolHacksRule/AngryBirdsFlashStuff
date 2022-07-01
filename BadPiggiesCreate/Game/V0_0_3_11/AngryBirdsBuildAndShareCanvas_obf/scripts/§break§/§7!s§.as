package §break§
{
   import §1&§.§!!W§;
   import §1&§.§!;§;
   import §1&§.§?!i§;
   
   public class §7!s§ extends §!;§
   {
       
      
      private var §#!a§:Number;
      
      private var §3D§:Number;
      
      public function §7!s§(param1:§!!W§, param2:Number, param3:Number)
      {
         super(param1,0);
         §['§ = param3 - param2;
         this.§#!a§ = param2;
         this.§3D§ = param3;
      }
      
      override protected function newInstance() : §?!i§
      {
         return new §7!s§(§5q§.clone() as §!!W§,this.§#!a§,this.§3D§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 > 0)
         {
            if(param1 < §['§)
            {
               §5q§.update(param1 + this.§#!a§);
            }
            else
            {
               §5q§.update(this.§3D§);
            }
         }
         else
         {
            §5q§.update(this.§#!a§);
         }
      }
      
      public function get §+!k§() : Number
      {
         return this.§#!a§;
      }
      
      public function get end() : Number
      {
         return this.§3D§;
      }
   }
}
