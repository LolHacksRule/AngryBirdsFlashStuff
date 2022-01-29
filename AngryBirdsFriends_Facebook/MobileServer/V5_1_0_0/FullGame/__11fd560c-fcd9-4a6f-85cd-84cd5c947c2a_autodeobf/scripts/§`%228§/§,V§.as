package §`"8§
{
   import §^"S§.DisplayObject;
   import §^"S§.Image;
   
   public class §,V§ extends §9"2§
   {
       
      
      protected var §6!4§:§`"X§;
      
      public function §,V§(param1:String, param2:§`"X§, param3:Number)
      {
         super(param1,param3);
         this.§6!4§ = param2;
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
            _loc3_ = new Image(this.§6!4§.texture,param2);
         }
         else
         {
            _loc3_.texture = this.§6!4§.texture;
         }
         _loc3_.pivotX = -this.§6!4§.pivotX;
         _loc3_.pivotY = -this.§6!4§.pivotY;
         _loc3_.scaleX = this.§6!4§.scale;
         _loc3_.scaleY = this.§6!4§.scale;
         return _loc3_;
      }
      
      override public function flipAnimation(param1:Boolean) : void
      {
         this.§6!4§.flipAnimation(param1);
      }
   }
}
