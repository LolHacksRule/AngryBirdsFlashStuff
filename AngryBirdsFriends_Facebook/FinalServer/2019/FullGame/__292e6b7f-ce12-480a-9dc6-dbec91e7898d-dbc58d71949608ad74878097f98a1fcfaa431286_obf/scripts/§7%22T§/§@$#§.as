package §7"T§
{
   import §,#e§.DisplayObject;
   import §,#e§.Image;
   
   public class §@$#§ extends §!#F§
   {
       
      
      protected var §[!-§:§4!L§;
      
      public function §@$#§(param1:String, param2:§4!L§, param3:Number)
      {
         super(param1,param3);
         this.§[!-§ = param2;
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
            _loc3_ = new Image(this.§[!-§.texture,param2);
         }
         else
         {
            _loc3_.texture = this.§[!-§.texture;
         }
         _loc3_.pivotX = -this.§[!-§.pivotX;
         _loc3_.pivotY = -this.§[!-§.pivotY;
         _loc3_.scaleX = this.§[!-§.scale;
         _loc3_.scaleY = this.§[!-§.scale;
         return _loc3_;
      }
      
      override public function flipAnimation(param1:Boolean) : void
      {
         this.§[!-§.flipAnimation(param1);
      }
   }
}
