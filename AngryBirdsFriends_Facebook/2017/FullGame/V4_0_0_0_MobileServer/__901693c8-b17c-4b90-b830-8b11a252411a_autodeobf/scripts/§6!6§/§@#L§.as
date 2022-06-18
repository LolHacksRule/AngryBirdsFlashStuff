package §6!6§
{
   import §];§.§-!t§;
   
   public class §@#L§ extends §[k§
   {
       
      
      public function §@#L§()
      {
         super();
      }
      
      public function §^#"§(param1:Object, param2:String) : Boolean
      {
         var _loc5_:* = null;
         var _loc3_:String = §-!t§.§<9§ + param2;
         var _loc4_:Boolean = false;
         for(_loc5_ in param1)
         {
            this.§'#I§(param1[_loc5_],_loc3_);
            _loc4_ = true;
         }
         return _loc4_;
      }
      
      protected function §'#I§(param1:Object, param2:String) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc3_:Array = param1.backgroundLayers;
         var _loc4_:Array = param1.foregroundLayers;
         var _loc5_:int = this.§2#q§(param1.groundColor);
         var _loc6_:int = this.§2#q§(param1.color);
         var _loc7_:String = param1.music;
         var _loc8_:Number = !!param1.musicVolume ? Number(param1.musicVolume) : Number(0);
         var _loc9_:String = param1.graphicSetName[0];
         var _loc10_:* = §-!t§.§ "D§.brandedTournamentAssetId + "_GROUND";
         var _loc11_:* = §-!t§.§ "D§.brandedTournamentAssetId + "_GROUND2";
         var _loc12_:String = param1.icon;
         var _loc13_:§2#g§;
         (_loc13_ = new §2#g§(param2,_loc6_,_loc5_,_loc7_,_loc8_,_loc10_,_loc11_,_loc12_)).§^#v§(_loc3_,_loc4_);
         §]"E§.push(_loc13_);
      }
      
      protected function §2#q§(param1:Object) : int
      {
         return (parseInt(param1.r) << 16) + (parseInt(param1.g) << 8) + (parseInt(param1.b) << 0);
      }
   }
}
