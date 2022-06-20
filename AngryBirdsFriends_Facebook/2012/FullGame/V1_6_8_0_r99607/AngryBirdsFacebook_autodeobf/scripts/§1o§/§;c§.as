package §1o§
{
   import §,!F§.§4!B§;
   import §,!F§.§@"B§;
   import §-"-§.§@!t§;
   import §8!-§.Item;
   import §8!-§.§["<§;
   import §["@§.§["%§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   
   public class §;c§ implements §3v§
   {
       
      
      private var §?P§:Array;
      
      private var §@!5§:Boolean = false;
      
      public function §;c§()
      {
         this.§?P§ = [];
         super();
      }
      
      public function §^!q§() : void
      {
         var object:Object = null;
         this.§@!5§ = true;
         for each(object in this.§?P§)
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
      
      public function §0"&§() : void
      {
         this.§@!5§ = true;
      }
      
      public function §+S§(param1:§@"B§) : void
      {
      }
      
      public function render(param1:String, param2:Function, param3:int = 50, param4:Boolean = false, param5:Object = null, param6:§@"B§ = null, param7:int = 0) : BitmapData
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Array = null;
         var _loc11_:§4!B§ = null;
         var _loc12_:BitmapData = null;
         var _loc13_:Item = null;
         var _loc14_:§["<§ = null;
         var _loc15_:Item = null;
         var _loc16_:Matrix = null;
         if(!this.§@!5§)
         {
            this.§?P§.push({
               "avatarString":param1,
               "callBack":param2,
               "imageSize":param3,
               "ignoreBackground":param4
            });
            return null;
         }
         _loc8_ = param3 * 0.4;
         _loc9_ = param3 / 100 / 2;
         _loc10_ = §["%§.§1!q§(param1);
         _loc11_ = new §4!B§();
         if(!param6)
         {
            for each(_loc13_ in _loc10_)
            {
               if(_loc13_.§;F§ == "CategoryBirds")
               {
                  _loc14_ = §@!t§.§8c§.characters.§!v§(_loc13_.§4W§);
                  param6 = new §@"B§(_loc14_);
               }
            }
         }
         _loc11_.§=!2§(param6,100,170 + param7,true);
         _loc12_ = new BitmapData(param3 + _loc8_,param3 + _loc8_ + param7,true,16777215);
         if(param6)
         {
            if(param4)
            {
               param6.§`M§();
            }
            for each(_loc15_ in _loc10_)
            {
               if(_loc15_.§;F§ != "CategoryBirds" && _loc15_.§;F§ != "CategoryBackgrounds")
               {
                  param6.§,"1§(_loc15_);
               }
               if(_loc15_.§;F§ == "CategoryBackgrounds")
               {
                  param6.§&&§(_loc15_.§4W§);
               }
            }
            if(param5)
            {
               param6.§`![§().gotoAndStop(param5);
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
