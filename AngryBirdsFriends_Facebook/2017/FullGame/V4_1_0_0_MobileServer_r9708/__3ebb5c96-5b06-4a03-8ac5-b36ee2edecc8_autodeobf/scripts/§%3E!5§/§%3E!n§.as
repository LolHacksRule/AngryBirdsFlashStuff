package §>!5§
{
   import §&!v§.Sprite;
   import §1!+§.b2World;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   
   public class §>!n§ extends §4#m§
   {
       
      
      protected var §+#d§:Number;
      
      protected var § #G§:Number;
      
      protected var §72§:Number;
      
      protected var §<"]§:Number;
      
      public function §>!n§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param10);
         this.§+#d§ = param6;
         this.§ #G§ = param7;
         this.§72§ = param8;
         this.§<"]§ = param9;
      }
      
      override protected function explodeBeforeRemoving(param1:§-!S§) : void
      {
         if(param1)
         {
            param1.§%$'§(getBody().GetPosition().x,getBody().GetPosition().y,this.§+#d§,this.§ #G§,this.§72§,this.§<"]§);
         }
      }
   }
}
