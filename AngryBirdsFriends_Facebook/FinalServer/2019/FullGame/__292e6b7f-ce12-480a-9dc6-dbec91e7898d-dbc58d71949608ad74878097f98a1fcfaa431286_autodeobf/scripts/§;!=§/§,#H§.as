package §;!=§
{
   import § !N§.§5"?§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §7"T§.§7b§;
   import §8#K§.§&2§;
   
   public class §,#H§ extends §^!8§
   {
       
      
      protected var §=?§:Number;
      
      protected var §^!I§:Number;
      
      protected var §##z§:Number;
      
      protected var §8#1§:Number;
      
      public function §,#H§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param10);
         this.§=?§ = param6;
         this.§^!I§ = param7;
         this.§##z§ = param8;
         this.§8#1§ = param9;
      }
      
      override protected function explodeBeforeRemoving(param1:§]!m§) : void
      {
         if(param1)
         {
            param1.§##Q§(getBody().GetPosition().x,getBody().GetPosition().y,this.§=?§,this.§^!I§,this.§##z§,this.§8#1§);
         }
      }
   }
}
