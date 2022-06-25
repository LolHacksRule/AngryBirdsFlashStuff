package §,!5§
{
   import §0!I§.ParticleDesignerPS;
   import §^!+§.Texture;
   
   public class §6o§ extends ParticleDesignerPS
   {
       
      
      public function §6o§(param1:XML, param2:Texture)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super(param1,param2);
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.dispose();
         }
      }
   }
}
