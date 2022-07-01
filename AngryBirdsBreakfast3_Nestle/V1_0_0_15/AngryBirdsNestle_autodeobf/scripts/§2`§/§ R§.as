package §2`§
{
   import §3!J§.§4!2§;
   import §3!J§.DisplayObject;
   
   public class § R§ extends §=!"§
   {
       
      
      protected var §>"5§:§5E§;
      
      public function § R§(param1:§5E§, param2:Number)
      {
         super(param2);
         this.§>"5§ = param1;
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:§4!2§ = param1 as §4!2§;
         if(!_loc2_)
         {
            if(param1)
            {
               param1.dispose();
            }
            _loc2_ = new §4!2§(this.§>"5§.texture,true);
         }
         else
         {
            _loc2_.texture = this.§>"5§.texture;
         }
         _loc2_.pivotX = -this.§>"5§.pivotX;
         _loc2_.pivotY = -this.§>"5§.pivotY;
         _loc2_.scaleX = this.§>"5§.scale;
         _loc2_.scaleY = this.§>"5§.scale;
         return _loc2_;
      }
   }
}
