package §6!?§
{
   import §0!Y§.§#"5§;
   import §0!Y§.DisplayObject;
   
   public class §<"1§ extends §1U§
   {
       
      
      protected var §^!T§:§6B§;
      
      public function §<"1§(param1:§6B§, param2:Number)
      {
         super(param2);
         this.§^!T§ = param1;
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:§#"5§ = param1 as §#"5§;
         if(!_loc2_)
         {
            if(param1)
            {
               param1.dispose();
            }
            _loc2_ = new §#"5§(this.§^!T§.texture,true);
         }
         else
         {
            _loc2_.texture = this.§^!T§.texture;
         }
         _loc2_.pivotX = -this.§^!T§.pivotX;
         _loc2_.pivotY = -this.§^!T§.pivotY;
         _loc2_.scaleX = this.§^!T§.scale;
         _loc2_.scaleY = this.§^!T§.scale;
         return _loc2_;
      }
   }
}
