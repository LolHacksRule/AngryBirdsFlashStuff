package §^e§
{
   import §4"@§.§?!0§;
   import §4"@§.DisplayObject;
   
   public class §]!n§ extends §'"5§
   {
       
      
      protected var §^!N§:§7!R§;
      
      public function §]!n§(param1:§7!R§, param2:Number)
      {
         super(param2);
         this.§^!N§ = param1;
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:§?!0§ = param1 as §?!0§;
         if(!_loc2_)
         {
            if(param1)
            {
               param1.dispose();
            }
            _loc2_ = new §?!0§(this.§^!N§.texture,true);
         }
         else
         {
            _loc2_.texture = this.§^!N§.texture;
         }
         _loc2_.pivotX = -this.§^!N§.pivotX;
         _loc2_.pivotY = -this.§^!N§.pivotY;
         _loc2_.scaleX = this.§^!N§.scale;
         _loc2_.scaleY = this.§^!N§.scale;
         return _loc2_;
      }
   }
}
