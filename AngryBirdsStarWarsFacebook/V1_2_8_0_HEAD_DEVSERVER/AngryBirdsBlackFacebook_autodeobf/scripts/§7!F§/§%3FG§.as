package §7!F§
{
   import §!!U§.§#"t§;
   import §!!U§.DisplayObject;
   
   public class §?G§ extends §<d§
   {
       
      
      protected var §^"R§:§8!W§;
      
      public function §?G§(param1:String, param2:§8!W§, param3:Number)
      {
         super(param1,param3);
         this.§^"R§ = param2;
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:§#"t§ = param1 as §#"t§;
         if(!_loc2_)
         {
            if(param1)
            {
               param1.dispose();
            }
            _loc2_ = new §#"t§(this.§^"R§.texture,true);
         }
         else
         {
            _loc2_.texture = this.§^"R§.texture;
         }
         _loc2_.pivotX = -this.§^"R§.pivotX;
         _loc2_.pivotY = -this.§^"R§.pivotY;
         _loc2_.scaleX = this.§^"R§.scale;
         _loc2_.scaleY = this.§^"R§.scale;
         return _loc2_;
      }
   }
}
