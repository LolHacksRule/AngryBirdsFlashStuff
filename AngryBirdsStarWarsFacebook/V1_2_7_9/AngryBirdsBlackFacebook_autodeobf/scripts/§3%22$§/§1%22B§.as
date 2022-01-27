package §3"$§
{
   public class §1"B§ extends §&"0§
   {
       
      
      protected var §;F§:Vector.<§&"0§>;
      
      public function §1"B§(param1:String = null)
      {
         super(param1);
         this.§;F§ = new Vector.<§&"0§>();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§;F§ = null;
      }
      
      public function reset() : void
      {
         this.§;F§ = new Vector.<§&"0§>();
      }
      
      public function § l§(param1:§&"0§) : void
      {
         if(this.§;F§.indexOf(param1) < 0)
         {
            this.§;F§.push(param1);
         }
      }
      
      override public function get textureMemoryUsage() : int
      {
         var _loc2_:§&"0§ = null;
         var _loc1_:int = super.textureMemoryUsage;
         for each(_loc2_ in this.§;F§)
         {
            _loc1_ += _loc2_.textureMemoryUsage;
         }
         return _loc1_;
      }
      
      override public function get bitmapMemoryUsage() : int
      {
         var _loc2_:§&"0§ = null;
         var _loc1_:int = super.bitmapMemoryUsage;
         for each(_loc2_ in this.§;F§)
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
         var _loc1_:§&"0§ = null;
         super.reInitializeTextures();
         for each(_loc1_ in this.§;F§)
         {
            _loc1_.reInitializeTextures();
         }
      }
      
      override public function getTexture(param1:String) : §]!h§
      {
         var _loc3_:§&"0§ = null;
         var _loc2_:§]!h§ = super.getTexture(param1);
         if(!_loc2_)
         {
            for each(_loc3_ in this.§;F§)
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
         var _loc2_:§&"0§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§;F§)
         {
            _loc1_ += _loc2_.textureCount;
         }
         return _loc1_;
      }
      
      override public function getTextureWithIndex(param1:int) : §]!h§
      {
         var _loc2_:§&"0§ = null;
         if(param1 < 0 || param1 >= this.textureCount)
         {
            return null;
         }
         for each(_loc2_ in this.§;F§)
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
