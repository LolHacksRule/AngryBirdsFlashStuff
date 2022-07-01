package §0!_§
{
   import §`!B§.§ l§;
   import §`!B§.DisplayObject;
   
   public class §=!"§ extends §<"6§
   {
       
      
      protected var §^V§:§19§;
      
      public function §=!"§(param1:§19§, param2:Number)
      {
         super(param2);
         this.§^V§ = param1;
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:§ l§ = param1 as § l§;
         if(!_loc2_)
         {
            if(param1)
            {
               param1.dispose();
            }
            _loc2_ = new § l§(this.§^V§.texture,true);
         }
         else
         {
            _loc2_.texture = this.§^V§.texture;
         }
         _loc2_.pivotX = -this.§^V§.pivotX;
         _loc2_.pivotY = -this.§^V§.pivotY;
         _loc2_.scaleX = this.§^V§.scale;
         _loc2_.scaleY = this.§^V§.scale;
         return _loc2_;
      }
   }
}
