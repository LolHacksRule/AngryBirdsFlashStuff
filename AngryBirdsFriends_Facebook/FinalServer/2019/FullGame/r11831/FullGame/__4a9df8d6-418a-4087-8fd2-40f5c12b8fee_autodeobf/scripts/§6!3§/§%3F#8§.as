package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §?$<§.§?$>§;
   import §@!S§.b2World;
   
   public class §?#8§ extends §'#S§
   {
       
      
      protected var §2@§:Number;
      
      protected var §2i§:Number;
      
      protected var §^#§:Number;
      
      protected var §4##§:Number;
      
      public function §?#8§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param10);
         this.§2@§ = param6;
         this.§2i§ = param7;
         this.§^#§ = param8;
         this.§4##§ = param9;
      }
      
      override protected function explodeBeforeRemoving(param1:§8$B§) : void
      {
         if(param1)
         {
            param1.§;"8§(getBody().GetPosition().x,getBody().GetPosition().y,this.§2@§,this.§2i§,this.§^#§,this.§4##§);
         }
      }
   }
}
