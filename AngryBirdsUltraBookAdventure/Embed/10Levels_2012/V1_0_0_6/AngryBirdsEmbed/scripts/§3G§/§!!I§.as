package §3G§
{
   import §%!6§.§+9§;
   import §,_§.Sprite;
   import §=!B§.§^!9§;
   
   public class §!!I§ extends §3X§
   {
       
      
      public function §!!I§(param1:§!E§, param2:§^!9§, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            super(param1,param2,param3);
         }
      }
      
      public function §^y§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§6A§ = null;
         for each(_loc2_ in §'@§)
         {
            if(_loc6_)
            {
               _loc2_.§"@§ = param1;
            }
         }
      }
      
      override public function startDragging() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.startDragging();
            if(!_loc1_)
            {
               addr28:
               §+9§.§3A§();
            }
            return;
         }
         §§goto(addr28);
      }
   }
}
