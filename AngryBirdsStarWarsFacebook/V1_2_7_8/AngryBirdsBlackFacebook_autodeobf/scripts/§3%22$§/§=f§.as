package §3"$§
{
   import §1"s§.§-i§;
   import §1"s§.DisplayObject;
   
   public class §=f§ extends §7"u§
   {
       
      
      protected var §!!Z§:§]!h§;
      
      public function §=f§(param1:String, param2:§]!h§, param3:Number)
      {
         super(param1,param3);
         this.§!!Z§ = param2;
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:§-i§ = param1 as §-i§;
         if(!_loc2_)
         {
            if(param1)
            {
               param1.dispose();
            }
            _loc2_ = new §-i§(this.§!!Z§.texture,true);
         }
         else
         {
            _loc2_.texture = this.§!!Z§.texture;
         }
         _loc2_.pivotX = -this.§!!Z§.pivotX;
         _loc2_.pivotY = -this.§!!Z§.pivotY;
         _loc2_.scaleX = this.§!!Z§.scale;
         _loc2_.scaleY = this.§!!Z§.scale;
         return _loc2_;
      }
   }
}
