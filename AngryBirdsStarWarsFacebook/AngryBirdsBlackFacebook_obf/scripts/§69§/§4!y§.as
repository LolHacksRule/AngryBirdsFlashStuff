package §69§
{
   import §1!i§.§7#&§;
   
   public class §4!y§ extends §!!u§
   {
       
      
      public function §4!y§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public function loadBackgroundsLua(param1:String) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc2_:Object = §7#&§.§06§(param1,true);
         for(_loc3_ in _loc2_)
         {
            _loc4_ = _loc2_[_loc3_];
            if(!(_loc8_ && this))
            {
               this.§8n§(_loc4_,_loc3_);
            }
         }
      }
      
      protected function §8n§(param1:Object, param2:String) : void
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
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
         §§push(this.§'4§(_loc9_));
         if(_loc21_)
         {
            §§push(int(§§pop()));
         }
         var _loc15_:* = §§pop();
         §§push(this.§'4§(_loc10_));
         if(_loc21_)
         {
            §§push(int(§§pop()));
         }
         var _loc16_:* = §§pop();
         if(!_loc20_)
         {
            if(param1.textureScale)
            {
               addr94:
               §§push(Number(param1.textureScale));
               if(_loc21_ || param1)
               {
                  addr109:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(Number(1));
               if(!_loc20_)
               {
                  §§goto(addr109);
               }
            }
            var _loc17_:* = §§pop();
            var _loc18_:Array = param1.loadListGroup;
            var _loc19_:§""H§ = null;
            (_loc19_ = new §""H§(param2,_loc16_,_loc15_,_loc12_,_loc14_,_loc7_,_loc8_,_loc5_,_loc6_,"",1,_loc17_,_loc18_)).§1!7§(_loc3_,_loc4_);
            if(!(_loc20_ && param2))
            {
               §!"9§.push(_loc19_);
            }
            return;
         }
         §§goto(addr94);
      }
      
      protected function §'4§(param1:Object) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push((parseInt(param1.r) << 16) + (parseInt(param1.g) << 8));
         if(_loc2_)
         {
            return §§pop() + (parseInt(param1.b) << 0);
         }
      }
   }
}
