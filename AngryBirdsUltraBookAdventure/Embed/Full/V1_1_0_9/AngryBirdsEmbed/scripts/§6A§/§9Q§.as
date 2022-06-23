package §6A§
{
   import §0! §.Texture;
   import §`6§.ParticleDesignerPS;
   
   public class §9Q§ extends ParticleDesignerPS
   {
       
      
      public function §9Q§(param1:XML, param2:Texture)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.dispose();
         }
      }
   }
}
