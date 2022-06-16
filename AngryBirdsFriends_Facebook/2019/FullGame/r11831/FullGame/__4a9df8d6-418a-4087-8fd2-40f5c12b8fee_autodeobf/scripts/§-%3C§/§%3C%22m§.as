package §-<§
{
   import §<!r§.§'##§;
   
   public class §<"m§ extends §4[§
   {
       
      
      public function §<"m§()
      {
         super();
      }
      
      public function §7!<§(param1:Object, param2:String) : Boolean
      {
         var _loc5_:* = null;
         var _loc3_:String = §'##§.§!$#§ + param2;
         var _loc4_:Boolean = false;
         for(_loc5_ in param1)
         {
            this.§<!k§(param1[_loc5_],_loc3_);
            _loc4_ = true;
         }
         return _loc4_;
      }
      
      protected function §<!k§(param1:Object, param2:String) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc3_:Array = param1.backgroundLayers;
         var _loc4_:Array = param1.foregroundLayers;
         var _loc5_:int = this.§`$'§(param1.groundColor);
         var _loc6_:int = this.§`$'§(param1.color);
         var _loc7_:String = param1.music;
         var _loc8_:Number = !!param1.musicVolume ? Number(param1.musicVolume) : Number(0);
         var _loc9_:* = §'##§.§`"H§.brandedTournamentAssetId + "_GROUND";
         var _loc10_:* = §'##§.§`"H§.brandedTournamentAssetId + "_GROUND2";
         if(param1.texture)
         {
            _loc9_ = param1.texture;
         }
         if(param1.backgroundTexture)
         {
            _loc10_ = param1.backgroundTexture;
         }
         var _loc11_:String = param1.icon;
         var _loc12_:§"#,§;
         (_loc12_ = new §"#,§(param2,_loc6_,_loc5_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_)).§+!n§(_loc3_,_loc4_,param1.animations);
         §2#1§.push(_loc12_);
      }
      
      protected function §`$'§(param1:Object) : int
      {
         return (parseInt(param1.r) << 16) + (parseInt(param1.g) << 8) + (parseInt(param1.b) << 0);
      }
   }
}
