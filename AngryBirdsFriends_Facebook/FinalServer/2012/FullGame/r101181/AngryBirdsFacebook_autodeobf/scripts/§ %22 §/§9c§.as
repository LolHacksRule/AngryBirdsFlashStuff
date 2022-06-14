package § " §
{
   import §!"=§.§&!J§;
   import §!"=§.§8S§;
   import §!K§.Item;
   import §!K§.§]q§;
   import §#!H§.§=!F§;
   import §0p§.§3!D§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   
   public class §9c§ implements §@Y§
   {
       
      
      private var §4U§:Array;
      
      private var § J§:Boolean = false;
      
      public function §9c§()
      {
         this.§4U§ = [];
         super();
      }
      
      public function §5!?§() : void
      {
         var object:Object = null;
         this.§ J§ = true;
         for each(object in this.§4U§)
         {
            try
            {
               this.render(object.avatarString,object.callBack,object.imageSize,object.ignoreBackground);
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function §0"C§() : void
      {
         this.§ J§ = true;
      }
      
      public function §-@§(param1:§8S§) : void
      {
      }
      
      public function render(param1:String, param2:Function, param3:int = 50, param4:Boolean = false, param5:Object = null, param6:§8S§ = null, param7:int = 0) : BitmapData
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Array = null;
         var _loc11_:§&!J§ = null;
         var _loc12_:BitmapData = null;
         var _loc13_:Item = null;
         var _loc14_:§]q§ = null;
         var _loc15_:Item = null;
         var _loc16_:Matrix = null;
         if(!this.§ J§)
         {
            this.§4U§.push({
               "avatarString":param1,
               "callBack":param2,
               "imageSize":param3,
               "ignoreBackground":param4
            });
            return null;
         }
         _loc8_ = param3 * 0.4;
         _loc9_ = param3 / 100 / 2;
         _loc10_ = §3!D§.§!!@§(param1);
         _loc11_ = new §&!J§();
         if(!param6)
         {
            for each(_loc13_ in _loc10_)
            {
               if(_loc13_.§[C§ == "CategoryBirds")
               {
                  _loc14_ = §=!F§.§;"§.characters.§4"3§(_loc13_.§;!Y§);
                  param6 = new §8S§(_loc14_);
               }
            }
         }
         _loc11_.§%!A§(param6,100,170 + param7,true);
         _loc12_ = new BitmapData(param3 + _loc8_,param3 + _loc8_ + param7,true,16777215);
         if(param6)
         {
            if(param4)
            {
               param6.§#!K§();
            }
            for each(_loc15_ in _loc10_)
            {
               if(_loc15_.§[C§ != "CategoryBirds" && _loc15_.§[C§ != "CategoryBackgrounds")
               {
                  param6.§0!L§(_loc15_);
               }
               if(_loc15_.§[C§ == "CategoryBackgrounds")
               {
                  param6.§6!9§(_loc15_.§;!Y§);
               }
            }
            if(param5)
            {
               param6.§^"!§().gotoAndStop(param5);
            }
            (_loc16_ = new Matrix()).scale(_loc9_,_loc9_);
            _loc16_.translate(_loc8_ / 2,_loc8_ / 2);
            _loc12_.draw(_loc11_,_loc16_,null,null,null,true);
         }
         _loc11_.dispose();
         _loc11_ = null;
         if(param2 != null)
         {
            param2(_loc12_);
         }
         return _loc12_;
      }
   }
}
