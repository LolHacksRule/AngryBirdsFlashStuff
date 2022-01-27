package §[,§
{
   import §#!X§.b2World;
   import §'!&§.Sprite;
   import §8o§.§]!U§;
   import §;"=§.§]"<§;
   
   public class §,m§ extends §#a§
   {
       
      
      protected var §7!_§:Number;
      
      protected var §@b§:Number;
      
      protected var §3R§:Number;
      
      protected var §=K§:Number;
      
      public function §,m§(param1:Sprite, param2:§]!U§, param3:b2World, param4:§]"<§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param12);
         this.§7!_§ = param8;
         this.§@b§ = param9;
         this.§3R§ = param10;
         this.§=K§ = param11;
      }
      
      override protected function explodeBeforeRemoving(param1:§class§) : void
      {
         if(param1)
         {
            param1.§[#§(§ <§().GetPosition().x,§ <§().GetPosition().y,this.§7!_§,this.§@b§,this.§3R§,this.§=K§);
         }
      }
   }
}
