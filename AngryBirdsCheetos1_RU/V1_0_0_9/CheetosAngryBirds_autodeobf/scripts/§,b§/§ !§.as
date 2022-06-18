package §,b§
{
   import §"A§.§?3§;
   import §7f§.§?i§;
   import §@1§.§]R§;
   import §^r§.§>`§;
   import flash.display.MovieClip;
   
   public class § !§ extends §?i§
   {
       
      
      private var §0!S§:§]R§;
      
      public function § !§(param1:XML, param2:§?i§, param3:§?3§, param4:§]R§, param5:MovieClip = null)
      {
         super(param1,param2,param3,param5);
         this.§0!S§ = param4;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§>`§) : void
      {
         this.§0!S§.uiInteractionHandler(param1,param2,param3);
      }
   }
}
