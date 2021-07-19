package §+!a§
{
   import § !Y§.§9k§;
   
   public class §<-§ extends §`b§
   {
       
      
      public function §<-§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function §1N§(param1:String) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc2_:Object = §9k§.§9"@§(param1,true);
         for(_loc3_ in _loc2_)
         {
            _loc4_ = _loc2_[_loc3_];
            if(!(_loc7_ && this))
            {
               this.§8"§(_loc4_,_loc3_);
            }
         }
      }
      
      protected function §8"§(param1:Object, param2:String) : void
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
         §§push(this.§%;§(_loc9_));
         if(_loc21_ || param2)
         {
            §§push(int(§§pop()));
         }
         var _loc15_:* = §§pop();
         §§push(this.§%;§(_loc10_));
         if(_loc21_)
         {
            §§push(int(§§pop()));
         }
         var _loc16_:* = §§pop();
         if(!(_loc20_ && _loc3_))
         {
            if(param1.textureScale)
            {
               addr104:
               §§push(Number(param1.textureScale));
               if(!_loc21_)
               {
               }
               addr119:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(1));
               if(!(_loc20_ && param1))
               {
                  §§goto(addr119);
               }
            }
            var _loc17_:* = §§pop();
            var _loc18_:Array = param1.loadListGroup;
            var _loc19_:§6p§ = null;
            (_loc19_ = new §6p§(param2,_loc16_,_loc15_,_loc12_,_loc14_,_loc7_,_loc8_,_loc5_,_loc6_,"",1,_loc17_,_loc18_)).§,?§(_loc3_,_loc4_);
            if(_loc21_ || param2)
            {
               §1t§.push(_loc19_);
            }
            return;
         }
         §§goto(addr104);
      }
      
      protected function §%;§(param1:Object) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push((parseInt(param1.r) << 16) + (parseInt(param1.g) << 8));
         if(!(_loc3_ && this))
         {
            return §§pop() + (parseInt(param1.b) << 0);
         }
      }
   }
}
