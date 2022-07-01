package §6`§
{
   import §-![§.§3!i§;
   import §-![§.DisplayObject;
   
   public class §3`§ extends §-!c§
   {
       
      
      protected var §0!0§:§8"&§;
      
      public function §3`§(param1:§8"&§, param2:Number)
      {
         super(param2);
         this.§0!0§ = param1;
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:§3!i§ = param1 as §3!i§;
         if(!_loc2_)
         {
            if(param1)
            {
               param1.dispose();
            }
            _loc2_ = new §3!i§(this.§0!0§.texture,true);
         }
         else
         {
            _loc2_.texture = this.§0!0§.texture;
         }
         _loc2_.pivotX = -this.§0!0§.pivotX;
         _loc2_.pivotY = -this.§0!0§.pivotY;
         _loc2_.scaleX = this.§0!0§.scale;
         _loc2_.scaleY = this.§0!0§.scale;
         return _loc2_;
      }
   }
}
