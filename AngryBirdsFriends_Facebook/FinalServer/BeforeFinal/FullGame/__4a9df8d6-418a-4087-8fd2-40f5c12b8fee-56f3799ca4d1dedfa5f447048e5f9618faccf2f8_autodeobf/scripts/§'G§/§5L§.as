package §'G§
{
   import §6#H§.DisplayObject;
   import §6#H§.Image;
   
   public class §5L§ extends §2#4§
   {
       
      
      protected var §;!D§:§3$B§;
      
      public function §5L§(param1:String, param2:§3$B§, param3:Number)
      {
         super(param1,param3);
         this.§;!D§ = param2;
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
            _loc3_ = new Image(this.§;!D§.texture,param2);
         }
         else
         {
            _loc3_.texture = this.§;!D§.texture;
         }
         _loc3_.pivotX = -this.§;!D§.pivotX;
         _loc3_.pivotY = -this.§;!D§.pivotY;
         _loc3_.scaleX = this.§;!D§.scale;
         _loc3_.scaleY = this.§;!D§.scale;
         return _loc3_;
      }
      
      override public function flipAnimation(param1:Boolean) : void
      {
         this.§;!D§.flipAnimation(param1);
      }
   }
}
