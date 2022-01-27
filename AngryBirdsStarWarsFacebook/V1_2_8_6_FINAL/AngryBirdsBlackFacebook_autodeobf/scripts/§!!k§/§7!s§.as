package §!!k§
{
   public class §7!s§ extends §0!B§
   {
       
      
      protected var §4#1§:Vector.<§0!B§>;
      
      public function §7!s§(param1:String = null)
      {
         super(param1);
         this.§4#1§ = new Vector.<§0!B§>();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§4#1§ = null;
      }
      
      public function reset() : void
      {
         this.§4#1§ = new Vector.<§0!B§>();
      }
      
      public function §;"z§(param1:§0!B§) : void
      {
         if(this.§4#1§.indexOf(param1) < 0)
         {
            this.§4#1§.push(param1);
         }
      }
      
      override public function get textureMemoryUsage() : int
      {
         var _loc2_:§0!B§ = null;
         var _loc1_:int = super.textureMemoryUsage;
         for each(_loc2_ in this.§4#1§)
         {
            _loc1_ += _loc2_.textureMemoryUsage;
         }
         return _loc1_;
      }
      
      override public function get bitmapMemoryUsage() : int
      {
         var _loc2_:§0!B§ = null;
         var _loc1_:int = super.bitmapMemoryUsage;
         for each(_loc2_ in this.§4#1§)
         {
            _loc1_ += _loc2_.bitmapMemoryUsage;
         }
         return _loc1_;
      }
      
      override public function initializeTextures() : Boolean
      {
         return super.initializeTextures();
      }
      
      override public function reInitializeTextures() : void
      {
         var _loc1_:§0!B§ = null;
         super.reInitializeTextures();
         for each(_loc1_ in this.§4#1§)
         {
            _loc1_.reInitializeTextures();
         }
      }
      
      override public function getTexture(param1:String) : §'!j§
      {
         var _loc3_:§0!B§ = null;
         var _loc2_:§'!j§ = super.getTexture(param1);
         if(!_loc2_)
         {
            for each(_loc3_ in this.§4#1§)
            {
               _loc2_ = _loc3_.getTexture(param1);
               if(_loc2_)
               {
                  break;
               }
            }
         }
         return _loc2_;
      }
      
      override public function get textureCount() : int
      {
         var _loc2_:§0!B§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§4#1§)
         {
            _loc1_ += _loc2_.textureCount;
         }
         return _loc1_;
      }
      
      override public function getTextureWithIndex(param1:int) : §'!j§
      {
         var _loc2_:§0!B§ = null;
         if(param1 < 0 || param1 >= this.textureCount)
         {
            return null;
         }
         for each(_loc2_ in this.§4#1§)
         {
            if(param1 < _loc2_.textureCount)
            {
               return _loc2_.getTextureWithIndex(param1);
            }
            param1 -= _loc2_.textureCount;
         }
         return null;
      }
   }
}
