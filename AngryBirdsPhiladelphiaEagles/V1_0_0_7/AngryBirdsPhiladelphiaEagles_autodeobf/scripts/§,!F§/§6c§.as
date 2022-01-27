package §,!F§
{
   import §3!%§.§#!K§;
   import §4!6§.§>r§;
   import §4G§.Sprite;
   
   public class §6c§ extends §,!7§
   {
       
      
      public function §6c§(param1:§#§, param2:§#!K§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function §;I§(param1:Number) : void
      {
         var _loc2_:§]!6§ = null;
         for each(_loc2_ in §6!$§)
         {
            _loc2_.§+!>§ = param1;
         }
      }
      
      override public function startDragging() : void
      {
         super.startDragging();
         §>r§.§!§(§>r§.§5v§);
      }
   }
}
