package § ! §
{
   import §6![§.§1!J§;
   import §6![§.DisplayObject;
   
   public class §`![§ extends §?n§
   {
       
      
      protected var §'!t§:§8-§;
      
      public function §`![§(param1:§8-§, param2:Number)
      {
         super(param2);
         this.§'!t§ = param1;
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:§1!J§ = param1 as §1!J§;
         if(!_loc2_)
         {
            if(param1)
            {
               param1.dispose();
            }
            _loc2_ = new §1!J§(this.§'!t§.texture,true);
         }
         else
         {
            _loc2_.texture = this.§'!t§.texture;
         }
         _loc2_.pivotX = -this.§'!t§.pivotX;
         _loc2_.pivotY = -this.§'!t§.pivotY;
         _loc2_.scaleX = this.§'!t§.scale;
         _loc2_.scaleY = this.§'!t§.scale;
         return _loc2_;
      }
   }
}
