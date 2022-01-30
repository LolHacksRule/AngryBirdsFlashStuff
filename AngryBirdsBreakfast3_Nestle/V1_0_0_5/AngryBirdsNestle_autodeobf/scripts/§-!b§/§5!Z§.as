package §-!b§
{
   import §,!q§.§+Q§;
   import §,!q§.DisplayObject;
   
   public class §5!Z§ extends §6"4§
   {
       
      
      protected var §3",§:§=!T§;
      
      public function §5!Z§(param1:§=!T§, param2:Number)
      {
         super(param2);
         this.§3",§ = param1;
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:§+Q§ = param1 as §+Q§;
         if(!_loc2_)
         {
            if(param1)
            {
               param1.dispose();
            }
            _loc2_ = new §+Q§(this.§3",§.texture,true);
         }
         else
         {
            _loc2_.texture = this.§3",§.texture;
         }
         _loc2_.pivotX = -this.§3",§.pivotX;
         _loc2_.pivotY = -this.§3",§.pivotY;
         _loc2_.scaleX = this.§3",§.scale;
         _loc2_.scaleY = this.§3",§.scale;
         return _loc2_;
      }
   }
}
