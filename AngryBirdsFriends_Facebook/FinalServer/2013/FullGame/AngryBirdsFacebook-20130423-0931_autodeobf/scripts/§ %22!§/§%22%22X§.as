package § "!§
{
   import §!"@§.§]"1§;
   import §,%§.§<D§;
   import §4y§.§0"H§;
   import §4y§.Item;
   import §]!w§.§'G§;
   import §]!w§.§[!X§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   
   public class §""X§ implements §04§
   {
       
      
      private var §^!I§:Array;
      
      private var §>!%§:Boolean = false;
      
      public function §""X§()
      {
         this.§^!I§ = [];
         super();
      }
      
      public function §@]§() : void
      {
         var object:Object = null;
         this.§>!%§ = true;
         for each(object in this.§^!I§)
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
      
      public function §#h§() : void
      {
         this.§>!%§ = true;
      }
      
      public function §6"Y§(param1:§[!X§) : void
      {
      }
      
      public function render(param1:String, param2:Function, param3:int = 50, param4:Boolean = false, param5:Object = null, param6:§[!X§ = null, param7:int = 0) : BitmapData
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Array = null;
         var _loc11_:§'G§ = null;
         var _loc12_:BitmapData = null;
         var _loc13_:Item = null;
         var _loc14_:§0"H§ = null;
         var _loc15_:Item = null;
         var _loc16_:Matrix = null;
         if(!this.§>!%§)
         {
            this.§^!I§.push({
               "avatarString":param1,
               "callBack":param2,
               "imageSize":param3,
               "ignoreBackground":param4
            });
            return null;
         }
         _loc8_ = param3 * 0.4;
         _loc9_ = param3 / 100 / 2;
         _loc10_ = §<D§.§'!^§(param1);
         _loc11_ = new §'G§();
         if(!param6)
         {
            for each(_loc13_ in _loc10_)
            {
               if(_loc13_.§;"V§ == "CategoryBirds")
               {
                  _loc14_ = §]"1§.§&"5§.characters.§>"!§(_loc13_.§&N§);
                  param6 = new §[!X§(_loc14_);
               }
            }
         }
         _loc11_.§2!Y§(param6,100,170 + param7,true);
         _loc12_ = new BitmapData(param3 + _loc8_,param3 + _loc8_ + param7,true,16777215);
         if(param6)
         {
            if(param4)
            {
               param6.§2!1§();
            }
            for each(_loc15_ in _loc10_)
            {
               if(_loc15_.§;"V§ != "CategoryBirds" && _loc15_.§;"V§ != "CategoryBackgrounds")
               {
                  param6.§]"A§(_loc15_);
               }
               if(_loc15_.§;"V§ == "CategoryBackgrounds")
               {
                  param6.§^!'§(_loc15_.§&N§);
               }
            }
            if(param5)
            {
               param6.§0!8§().gotoAndStop(param5);
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
