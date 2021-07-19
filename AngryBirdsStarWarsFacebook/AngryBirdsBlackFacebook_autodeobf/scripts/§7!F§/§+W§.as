package §7!F§
{
   public class §+W§ extends §7#5§
   {
       
      
      protected var §1A§:Vector.<§7#5§>;
      
      public function §+W§(param1:String = null)
      {
         super(param1);
         this.§1A§ = new Vector.<§7#5§>();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§1A§ = null;
      }
      
      public function reset() : void
      {
         this.§1A§ = new Vector.<§7#5§>();
      }
      
      public function §+#T§(param1:§7#5§) : void
      {
         if(this.§1A§.indexOf(param1) < 0)
         {
            this.§1A§.push(param1);
         }
      }
      
      override public function get textureMemoryUsage() : int
      {
         var _loc2_:§7#5§ = null;
         var _loc1_:int = super.textureMemoryUsage;
         for each(_loc2_ in this.§1A§)
         {
            _loc1_ += _loc2_.textureMemoryUsage;
         }
         return _loc1_;
      }
      
      override public function get bitmapMemoryUsage() : int
      {
         var _loc2_:§7#5§ = null;
         var _loc1_:int = super.bitmapMemoryUsage;
         for each(_loc2_ in this.§1A§)
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
         var _loc1_:§7#5§ = null;
         super.reInitializeTextures();
         for each(_loc1_ in this.§1A§)
         {
            _loc1_.reInitializeTextures();
         }
      }
      
      override public function getTexture(param1:String) : §8!W§
      {
         var _loc3_:§7#5§ = null;
         var _loc2_:§8!W§ = super.getTexture(param1);
         if(!_loc2_)
         {
            for each(_loc3_ in this.§1A§)
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
         var _loc2_:§7#5§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§1A§)
         {
            _loc1_ += _loc2_.textureCount;
         }
         return _loc1_;
      }
      
      override public function getTextureWithIndex(param1:int) : §8!W§
      {
         var _loc2_:§7#5§ = null;
         if(param1 < 0 || param1 >= this.textureCount)
         {
            return null;
         }
         for each(_loc2_ in this.§1A§)
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
