package §6_§
{
   import §-!f§.§-!,§;
   import §-!f§.DisplayObject;
   
   public class §`!o§ extends §#i§
   {
       
      
      protected var §4r§:§7W§;
      
      public function §`!o§(param1:§7W§, param2:Number)
      {
         super(param2);
         this.§4r§ = param1;
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:§-!,§ = param1 as §-!,§;
         if(!_loc2_)
         {
            if(param1)
            {
               param1.dispose();
            }
            _loc2_ = new §-!,§(this.§4r§.texture,true);
         }
         else
         {
            _loc2_.texture = this.§4r§.texture;
         }
         _loc2_.pivotX = -this.§4r§.pivotX;
         _loc2_.pivotY = -this.§4r§.pivotY;
         _loc2_.scaleX = this.§4r§.scale;
         _loc2_.scaleY = this.§4r§.scale;
         return _loc2_;
      }
   }
}
