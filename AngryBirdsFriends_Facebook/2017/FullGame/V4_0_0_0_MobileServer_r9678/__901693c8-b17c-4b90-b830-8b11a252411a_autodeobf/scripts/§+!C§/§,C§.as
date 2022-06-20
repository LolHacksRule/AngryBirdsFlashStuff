package §+!C§
{
   import §&!v§.Sprite;
   import §-"+§.Texture;
   import §=#C§.§1"r§;
   import §=#C§.§7"G§;
   import §["-§.§3"<§;
   
   public class §,C§ extends §^$'§
   {
       
      
      private var §5#i§:§3"<§;
      
      public function §,C§(param1:§3"<§, param2:Sprite, param3:Texture, param4:Number, param5:Number)
      {
         super(param2,param3,param4,param5);
         this.§5#i§ = param1;
      }
      
      override protected function laserSightMaxPoints() : int
      {
         switch(§1"r§.§,#8§())
         {
            case §7"G§.§1d§.§?"9§:
               return !!(this.§5#i§.§"!!§ as §#!L§).§1"-§.§"8§ ? int(§1!$§.§0#$§) : 5;
            default:
               return §1!$§.§0#$§;
         }
      }
   }
}
