package §_-dH§
{
   import §_-3b§.§_-Og§;
   import §_-3b§.§_-Xv§;
   import §_-SE§.Sprite;
   
   public class §_-wT§
   {
      
      public static const §_-g7§:int = 0;
      
      public static const §_-uY§:int = 1;
      
      public static const §_-Fi§:int = 2;
      
      public static const §_-Kz§:int = 3;
      
      public static const §_-HN§:int = 4;
      
      public static const §_-vq§:int = 5;
       
      
      private var §_-RY§:Vector.<§_-Sx§>;
      
      private var §_-LP§:§_-Xv§;
      
      private var §_-wI§:§_-Og§;
      
      public function §_-wT§(param1:§_-Xv§, param2:§_-Og§)
      {
         super();
         this.§_-LP§ = param1;
         this.§_-wI§ = param2;
         this.§_-RY§ = new Vector.<§_-Sx§>();
         var _loc3_:int = 0;
         while(_loc3_ < §_-vq§)
         {
            this.§_-RY§[_loc3_] = new §_-Sx§();
            _loc3_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-Sx§ = null;
         if(this.§_-RY§)
         {
            while(this.§_-RY§.length)
            {
               _loc1_ = this.§_-RY§.pop();
               _loc1_.dispose();
            }
         }
         this.§_-RY§ = null;
      }
      
      public function §_-Kw§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §_-ds§
      {
         var _loc16_:§_-ds§ = new §_-ds§(this.§_-LP§,this.§_-wI§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§_-Sx§;
         if(_loc17_ = this.§_-zI§(param2))
         {
            _loc17_.§_-Kw§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-RY§.length)
         {
            this.§_-zI§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §_-Jf§(param1:int) : void
      {
         var _loc2_:§_-Sx§ = this.§_-zI§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §_-6h§(param1:int) : Sprite
      {
         return this.§_-zI§(param1).sprite;
      }
      
      public function §_-zI§(param1:Number) : §_-Sx§
      {
         if(this.§_-RY§ != null)
         {
            return this.§_-RY§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§_-Jf§(§_-g7§);
         var _loc1_:§_-Sx§ = this.§_-zI§(§_-uY§);
         var _loc2_:§_-Sx§ = this.§_-zI§(§_-g7§);
         _loc1_.§_-Ml§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §_-3I§(param1:Number, param2:Number) : void
      {
         var _loc3_:§_-Sx§ = null;
         for each(_loc3_ in this.§_-RY§)
         {
            _loc3_.§_-ty§(param1,param2);
         }
      }
   }
}
