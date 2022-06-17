package § !D§
{
   import § O§.§&# §;
   import § O§.§7!S§;
   import §!6§.Sprite;
   import §!L§.§6!<§;
   import §""'§.Texture;
   
   public class § !"§ extends §>#K§
   {
       
      
      private var §<!n§:§6!<§;
      
      public function § !"§(param1:§6!<§, param2:Sprite, param3:Texture, param4:Number, param5:Number)
      {
         super(param2,param3,param4,param5);
         this.§<!n§ = param1;
      }
      
      override protected function laserSightMaxPoints() : int
      {
         switch(§&# §.§!$0§())
         {
            case §7!S§.§&"z§.§]'§:
               return !!(this.§<!n§.§-a§ as §4B§).§##`§.§&`§ ? int(§;#W§.§,g§) : 5;
            default:
               return §;#W§.§,g§;
         }
      }
   }
}
