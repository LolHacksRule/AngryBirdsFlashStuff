package §6$8§
{
   import §8#!§.§5`§;
   
   public class §]N§ extends §'!W§
   {
       
      
      public function §]N§()
      {
         super();
      }
      
      public function §="s§(param1:Object, param2:String) : Boolean
      {
         var _loc5_:* = null;
         var _loc3_:String = §5`§.§#!3§ + param2;
         var _loc4_:Boolean = false;
         for(_loc5_ in param1)
         {
            this.§^#k§(param1[_loc5_],_loc3_);
            _loc4_ = true;
         }
         return _loc4_;
      }
      
      protected function §^#k§(param1:Object, param2:String) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc3_:Array = param1.backgroundLayers;
         var _loc4_:Array = param1.foregroundLayers;
         var _loc5_:int = this.§1#Z§(param1.groundColor);
         var _loc6_:int = this.§1#Z§(param1.color);
         var _loc7_:String = param1.music;
         var _loc8_:Number = !!param1.musicVolume ? Number(param1.musicVolume) : Number(0);
         var _loc9_:* = §5`§.§6!§.brandedTournamentAssetId + "_GROUND";
         var _loc10_:* = §5`§.§6!§.brandedTournamentAssetId + "_GROUND2";
         if(param1.texture)
         {
            _loc9_ = param1.texture;
         }
         if(param1.backgroundTexture)
         {
            _loc10_ = param1.backgroundTexture;
         }
         var _loc11_:String = param1.icon;
         var _loc12_:§%"#§;
         (_loc12_ = new §%"#§(param2,_loc6_,_loc5_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_)).§-#U§(_loc3_,_loc4_);
         §;!F§.push(_loc12_);
      }
      
      protected function §1#Z§(param1:Object) : int
      {
         return (parseInt(param1.r) << 16) + (parseInt(param1.g) << 8) + (parseInt(param1.b) << 0);
      }
   }
}
