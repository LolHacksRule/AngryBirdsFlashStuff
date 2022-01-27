package §,§
{
   import §'#§.§'!l§;
   
   public class §%!y§ extends §#0§
   {
       
      
      public function §%!y§()
      {
         super();
      }
      
      public function §^!X§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc2_:Object = §'!l§.§&K§(param1,true);
         for(_loc3_ in _loc2_)
         {
            _loc4_ = _loc2_[_loc3_];
            this.§+!c§(_loc4_,_loc3_);
         }
      }
      
      protected function §+!c§(param1:Object, param2:String) : void
      {
         var _loc3_:Array = param1.bgLayers;
         var _loc4_:Array = param1.fgLayers;
         var _loc5_:String = param1.gravitySliceBoxSprite;
         var _loc6_:String = param1.gravitySliceBoxSpriteFaded;
         var _loc7_:String = param1.gravitySliceSprite;
         var _loc8_:String = param1.gravitySliceSpriteFaded;
         var _loc9_:Object = param1.groundColor;
         var _loc10_:Object = param1.skyColor;
         var _loc11_:String = param1.levelFailedSound;
         var _loc12_:String = param1.music;
         var _loc13_:Number = param1.musicVolume;
         var _loc14_:String = param1.texture;
         var _loc15_:int = this.§0]§(_loc9_);
         var _loc16_:int = this.§0]§(_loc10_);
         var _loc17_:Number = !!param1.textureScale ? Number(param1.textureScale) : Number(1);
         var _loc18_:Array = param1.loadListGroup;
         var _loc19_:§3"F§ = null;
         (_loc19_ = new §3"F§(param2,_loc16_,_loc15_,_loc12_,_loc14_,_loc7_,_loc8_,_loc5_,_loc6_,"",1,_loc17_,_loc18_)).§7!"§(_loc3_,_loc4_);
         §]";§.push(_loc19_);
      }
      
      protected function §0]§(param1:Object) : int
      {
         return (parseInt(param1.r) << 16) + (parseInt(param1.g) << 8) + (parseInt(param1.b) << 0);
      }
   }
}
