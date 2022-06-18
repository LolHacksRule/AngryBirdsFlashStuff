package §7!j§
{
   import §&!v§.DisplayObject;
   import §&!v§.Image;
   
   public class §1#y§ extends §2$3§
   {
       
      
      protected var §9$0§:§'#'§;
      
      public function §1#y§(param1:String, param2:§'#'§, param3:Number)
      {
         super(param1,param3);
         this.§9$0§ = param2;
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
            _loc3_ = new Image(this.§9$0§.texture,param2);
         }
         else
         {
            _loc3_.texture = this.§9$0§.texture;
         }
         _loc3_.pivotX = -this.§9$0§.pivotX;
         _loc3_.pivotY = -this.§9$0§.pivotY;
         _loc3_.scaleX = this.§9$0§.scale;
         _loc3_.scaleY = this.§9$0§.scale;
         return _loc3_;
      }
      
      override public function flipAnimation(param1:Boolean) : void
      {
         this.§9$0§.flipAnimation(param1);
      }
   }
}
