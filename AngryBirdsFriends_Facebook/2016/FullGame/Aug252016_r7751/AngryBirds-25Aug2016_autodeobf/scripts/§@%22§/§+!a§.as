package §@"§
{
   import §9$§.DisplayObject;
   import §9$§.Image;
   
   public class §+!a§ extends §;!"§
   {
       
      
      protected var §3!L§:§+!3§;
      
      public function §+!a§(param1:String, param2:§+!3§, param3:Number)
      {
         super(param1,param3);
         this.§3!L§ = param2;
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
            _loc3_ = new Image(this.§3!L§.texture,param2);
         }
         else
         {
            _loc3_.texture = this.§3!L§.texture;
         }
         _loc3_.pivotX = -this.§3!L§.pivotX;
         _loc3_.pivotY = -this.§3!L§.pivotY;
         _loc3_.scaleX = this.§3!L§.scale;
         _loc3_.scaleY = this.§3!L§.scale;
         return _loc3_;
      }
      
      override public function flipAnimation(param1:Boolean) : void
      {
         this.§3!L§.flipAnimation(param1);
      }
   }
}
