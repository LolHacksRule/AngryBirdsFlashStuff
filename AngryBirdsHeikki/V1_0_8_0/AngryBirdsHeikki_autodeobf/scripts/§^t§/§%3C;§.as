package §^t§
{
   import §=!E§.Sprite;
   import §]!C§.§!y§;
   import §]!C§.§0!d§;
   
   public class §<;§
   {
      
      public static const §[!7§:int = 0;
      
      public static const §&v§:int = 1;
      
      public static const §'!4§:int = 2;
      
      public static const §&!=§:int = 3;
      
      public static const §]]§:int = 4;
      
      public static const §51§:int = 5;
       
      
      private var §1c§:Vector.<§>4§>;
      
      private var §[!1§:§!y§;
      
      private var §>8§:§0!d§;
      
      public function §<;§(param1:§!y§, param2:§0!d§)
      {
         super();
         this.§[!1§ = param1;
         this.§>8§ = param2;
         this.§1c§ = new Vector.<§>4§>();
         var _loc3_:int = 0;
         while(_loc3_ < §51§)
         {
            this.§1c§[_loc3_] = new §>4§();
            _loc3_++;
         }
      }
      
      public function get §=_§() : §!y§
      {
         return this.§[!1§;
      }
      
      public function get textureManager() : §0!d§
      {
         return this.§>8§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§>4§ = null;
         if(this.§1c§)
         {
            while(this.§1c§.length)
            {
               _loc1_ = this.§1c§.pop();
               _loc1_.dispose();
            }
         }
         this.§1c§ = null;
      }
      
      public function §"-§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§4!C§ = new §4!C§(this.§[!1§,this.§>8§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§>4§;
         if(_loc18_ = this.§2`§(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §[I§
      {
         var _loc16_:§[I§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§>4§;
         if(_loc17_ = this.§2`§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §[I§
      {
         return new §[I§(this.§[!1§,this.§>8§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§1c§.length)
         {
            this.§2`§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function § !!§(param1:int) : void
      {
         var _loc2_:§>4§ = this.§2`§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §]P§(param1:int) : Sprite
      {
         return this.§2`§(param1).sprite;
      }
      
      public function §2`§(param1:Number) : §>4§
      {
         if(this.§1c§ != null)
         {
            return this.§1c§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§ !!§(§[!7§);
         var _loc1_:§>4§ = this.§2`§(§&v§);
         var _loc2_:§>4§ = this.§2`§(§[!7§);
         _loc1_.§?!6§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §5r§(param1:Number, param2:Number) : void
      {
         var _loc3_:§>4§ = null;
         for each(_loc3_ in this.§1c§)
         {
            _loc3_.§^!#§(param1,param2);
         }
      }
   }
}
