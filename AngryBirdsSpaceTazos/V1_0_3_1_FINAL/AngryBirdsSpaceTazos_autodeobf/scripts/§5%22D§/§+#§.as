package §5"D§
{
   import §4"@§.Sprite;
   import §6!M§.§<!r§;
   import §;`§.b2World;
   import §^e§.§^5§;
   
   public class §+#§ extends §"Z§
   {
       
      
      protected var §`!&§:Number;
      
      protected var §!!§:Number;
      
      protected var §5J§:Number;
      
      protected var §4=§:Number;
      
      public function §+#§(param1:Sprite, param2:§^5§, param3:b2World, param4:§<!r§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param12);
         this.§`!&§ = param8;
         this.§!!§ = param9;
         this.§5J§ = param10;
         this.§4=§ = param11;
      }
      
      override protected function explodeBeforeRemoving(param1:§0!5§) : void
      {
         if(param1)
         {
            param1.§[! §(§9B§().GetPosition().x,§9B§().GetPosition().y,this.§`!&§,this.§!!§,this.§5J§,this.§4=§);
         }
      }
   }
}
