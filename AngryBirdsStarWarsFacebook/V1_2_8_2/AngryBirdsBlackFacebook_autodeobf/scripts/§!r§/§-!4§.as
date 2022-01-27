package §!r§
{
   import §!!k§.§1!^§;
   import §#g§.§["%§;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §use§.Sprite;
   
   public class §-!4§ extends §%E§
   {
       
      
      protected var §0!V§:Number;
      
      protected var §4"v§:Number;
      
      protected var §%"-§:Number;
      
      protected var §["v§:Number;
      
      public function §-!4§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:§9v§, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param10);
         this.§0!V§ = param6;
         this.§4"v§ = param7;
         this.§%"-§ = param8;
         this.§["v§ = param9;
      }
      
      override protected function explodeBeforeRemoving(param1:§'=§) : void
      {
         if(param1)
         {
            param1.§?#6§(§3"s§().GetPosition().x,§3"s§().GetPosition().y,this.§0!V§,this.§4"v§,this.§%"-§,this.§["v§);
         }
      }
   }
}
