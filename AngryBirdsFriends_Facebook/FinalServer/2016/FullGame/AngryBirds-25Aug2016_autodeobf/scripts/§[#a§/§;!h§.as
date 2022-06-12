package §[#a§
{
   import §,#L§.§!#%§;
   import §9$§.Sprite;
   import §=#n§.b2World;
   import §@"§.§`"W§;
   import §`#C§.§8K§;
   
   public class §;!h§ extends §`#X§
   {
       
      
      protected var §`$3§:Number;
      
      protected var §2!>§:Number;
      
      protected var §3#F§:Number;
      
      protected var §&!0§:Number;
      
      public function §;!h§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param10);
         this.§`$3§ = param6;
         this.§2!>§ = param7;
         this.§3#F§ = param8;
         this.§&!0§ = param9;
      }
      
      override protected function explodeBeforeRemoving(param1:§7!O§) : void
      {
         if(param1)
         {
            param1.§!!c§(getBody().GetPosition().x,getBody().GetPosition().y,this.§`$3§,this.§2!>§,this.§3#F§,this.§&!0§);
         }
      }
   }
}
