package §^0§
{
   import §#Z§.Sprite;
   import §-!j§.§-"8§;
   import §3#h§.b2World;
   import §9#M§.§,`§;
   import §@"v§.§@$<§;
   
   public class §`#Z§ extends §0"C§
   {
       
      
      protected var §+#`§:Number;
      
      protected var §;"Y§:Number;
      
      protected var §!#r§:Number;
      
      protected var §[!u§:Number;
      
      public function §`#Z§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param10);
         this.§+#`§ = param6;
         this.§;"Y§ = param7;
         this.§!#r§ = param8;
         this.§[!u§ = param9;
      }
      
      override protected function explodeBeforeRemoving(param1:§>"T§) : void
      {
         if(param1)
         {
            param1.§]#i§(getBody().GetPosition().x,getBody().GetPosition().y,this.§+#`§,this.§;"Y§,this.§!#r§,this.§[!u§);
         }
      }
   }
}
