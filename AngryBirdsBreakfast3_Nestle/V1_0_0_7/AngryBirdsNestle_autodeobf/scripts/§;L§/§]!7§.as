package §;L§
{
   import § !=§.§0F§;
   import § !=§.DisplayObject;
   
   public class §]!7§ extends §%_§
   {
       
      
      protected var §-e§:§[!H§;
      
      public function §]!7§(param1:§[!H§, param2:Number)
      {
         super(param2);
         this.§-e§ = param1;
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:§0F§ = param1 as §0F§;
         if(!_loc2_)
         {
            if(param1)
            {
               param1.dispose();
            }
            _loc2_ = new §0F§(this.§-e§.texture,true);
         }
         else
         {
            _loc2_.texture = this.§-e§.texture;
         }
         _loc2_.pivotX = -this.§-e§.pivotX;
         _loc2_.pivotY = -this.§-e§.pivotY;
         _loc2_.scaleX = this.§-e§.scale;
         _loc2_.scaleY = this.§-e§.scale;
         return _loc2_;
      }
   }
}
