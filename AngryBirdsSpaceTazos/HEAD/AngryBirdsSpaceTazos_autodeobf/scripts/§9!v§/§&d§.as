package §9!v§
{
   import §&!]§.§#[§;
   import §&!]§.DisplayObject;
   
   public class §&d§ extends § "<§
   {
       
      
      protected var §3!2§:§"[§;
      
      public function §&d§(param1:§"[§, param2:Number)
      {
         super(param2);
         this.§3!2§ = param1;
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:§#[§ = param1 as §#[§;
         if(!_loc2_)
         {
            if(param1)
            {
               param1.dispose();
            }
            _loc2_ = new §#[§(this.§3!2§.texture,true);
         }
         else
         {
            _loc2_.texture = this.§3!2§.texture;
         }
         _loc2_.pivotX = -this.§3!2§.pivotX;
         _loc2_.pivotY = -this.§3!2§.pivotY;
         _loc2_.scaleX = this.§3!2§.scale;
         _loc2_.scaleY = this.§3!2§.scale;
         return _loc2_;
      }
   }
}
