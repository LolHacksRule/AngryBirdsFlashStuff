package §^"[§
{
   import §!6§.DisplayObject;
   import §!6§.Image;
   
   public class §'#6§ extends §@#V§
   {
       
      
      protected var §;Z§:§^!8§;
      
      public function §'#6§(param1:String, param2:§^!8§, param3:Number)
      {
         super(param1,param3);
         this.§;Z§ = param2;
      }
      
      override public function updateDisplayObject(param1:DisplayObject, param2:Boolean = true) : DisplayObject
      {
         var _loc3_:Image = param1 as Image;
         if(!_loc3_)
         {
            if(param1)
            {
               param1.dispose();
            }
            _loc3_ = new Image(this.§;Z§.texture,param2);
         }
         else
         {
            _loc3_.texture = this.§;Z§.texture;
         }
         _loc3_.pivotX = -this.§;Z§.pivotX;
         _loc3_.pivotY = -this.§;Z§.pivotY;
         _loc3_.scaleX = this.§;Z§.scale;
         _loc3_.scaleY = this.§;Z§.scale;
         return _loc3_;
      }
      
      override public function flipAnimation(param1:Boolean) : void
      {
         this.§;Z§.flipAnimation(param1);
      }
   }
}
