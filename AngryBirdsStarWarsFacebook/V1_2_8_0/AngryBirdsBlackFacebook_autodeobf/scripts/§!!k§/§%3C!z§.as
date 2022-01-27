package §!!k§
{
   import §use§.§,!u§;
   import §use§.DisplayObject;
   
   public class §<!z§ extends §?!`§
   {
       
      
      protected var §'"C§:§'!j§;
      
      public function §<!z§(param1:String, param2:§'!j§, param3:Number)
      {
         super(param1,param3);
         this.§'"C§ = param2;
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:§,!u§ = param1 as §,!u§;
         if(!_loc2_)
         {
            if(param1)
            {
               param1.dispose();
            }
            _loc2_ = new §,!u§(this.§'"C§.texture,true);
         }
         else
         {
            _loc2_.texture = this.§'"C§.texture;
         }
         _loc2_.pivotX = -this.§'"C§.pivotX;
         _loc2_.pivotY = -this.§'"C§.pivotY;
         _loc2_.scaleX = this.§'"C§.scale;
         _loc2_.scaleY = this.§'"C§.scale;
         return _loc2_;
      }
   }
}
