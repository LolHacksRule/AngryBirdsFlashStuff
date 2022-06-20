package §9#M§
{
   import §#Z§.DisplayObject;
   import §#Z§.Image;
   
   public class §>!t§ extends §1#o§
   {
       
      
      protected var §+!E§:§'!-§;
      
      public function §>!t§(param1:String, param2:§'!-§, param3:Number)
      {
         super(param1,param3);
         this.§+!E§ = param2;
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
            _loc3_ = new Image(this.§+!E§.texture,param2);
         }
         else
         {
            _loc3_.texture = this.§+!E§.texture;
         }
         _loc3_.pivotX = -this.§+!E§.pivotX;
         _loc3_.pivotY = -this.§+!E§.pivotY;
         _loc3_.scaleX = this.§+!E§.scale;
         _loc3_.scaleY = this.§+!E§.scale;
         return _loc3_;
      }
      
      override public function flipAnimation(param1:Boolean) : void
      {
         this.§+!E§.flipAnimation(param1);
      }
   }
}
