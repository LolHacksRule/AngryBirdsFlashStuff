package §8o§
{
   import §'!&§.§9!c§;
   import §'!&§.DisplayObject;
   
   public class §8B§ extends §`!_§
   {
       
      
      protected var §2o§:§!">§;
      
      public function §8B§(param1:§!">§, param2:Number)
      {
         super(param2);
         this.§2o§ = param1;
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:§9!c§ = param1 as §9!c§;
         if(!_loc2_)
         {
            if(param1)
            {
               param1.dispose();
            }
            _loc2_ = new §9!c§(this.§2o§.texture,true);
         }
         else
         {
            _loc2_.texture = this.§2o§.texture;
         }
         _loc2_.pivotX = -this.§2o§.pivotX;
         _loc2_.pivotY = -this.§2o§.pivotY;
         _loc2_.scaleX = this.§2o§.scale;
         _loc2_.scaleY = this.§2o§.scale;
         return _loc2_;
      }
   }
}
