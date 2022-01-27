package §4&§
{
   import §7!8§.DisplayObject;
   import §7!8§.§`y§;
   
   public class §`"=§ extends §else§
   {
       
      
      protected var §2-§:§'!"§;
      
      public function §`"=§(param1:§'!"§, param2:Number)
      {
         super(param2);
         this.§2-§ = param1;
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:§`y§ = param1 as §`y§;
         if(!_loc2_)
         {
            if(param1)
            {
               param1.dispose();
            }
            _loc2_ = new §`y§(this.§2-§.texture,true);
         }
         else
         {
            _loc2_.texture = this.§2-§.texture;
         }
         _loc2_.pivotX = -this.§2-§.pivotX;
         _loc2_.pivotY = -this.§2-§.pivotY;
         _loc2_.scaleX = this.§2-§.scale;
         _loc2_.scaleY = this.§2-§.scale;
         return _loc2_;
      }
   }
}
