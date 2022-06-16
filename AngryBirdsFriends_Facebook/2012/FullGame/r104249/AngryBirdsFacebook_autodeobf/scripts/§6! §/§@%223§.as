package §6! §
{
   import § !i§.§=?§;
   import §!9§.§%y§;
   import §5!q§.§2"L§;
   import §5!q§.§@"0§;
   import §`!?§.§;!`§;
   import §`!?§.Item;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   
   public class §@"3§ implements §<h§
   {
       
      
      private var §7"H§:Array;
      
      private var §!Q§:Boolean = false;
      
      public function §@"3§()
      {
         this.§7"H§ = [];
         super();
      }
      
      public function §"!q§() : void
      {
         var object:Object = null;
         this.§!Q§ = true;
         for each(object in this.§7"H§)
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
      
      public function §^E§() : void
      {
         this.§!Q§ = true;
      }
      
      public function §3!n§(param1:§2"L§) : void
      {
      }
      
      public function render(param1:String, param2:Function, param3:int = 50, param4:Boolean = false, param5:Object = null, param6:§2"L§ = null, param7:int = 0) : BitmapData
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Array = null;
         var _loc11_:§@"0§ = null;
         var _loc12_:BitmapData = null;
         var _loc13_:Item = null;
         var _loc14_:§;!`§ = null;
         var _loc15_:Item = null;
         var _loc16_:Matrix = null;
         if(!this.§!Q§)
         {
            this.§7"H§.push({
               "avatarString":param1,
               "callBack":param2,
               "imageSize":param3,
               "ignoreBackground":param4
            });
            return null;
         }
         _loc8_ = param3 * 0.4;
         _loc9_ = param3 / 100 / 2;
         _loc10_ = §=?§.§""F§(param1);
         _loc11_ = new §@"0§();
         if(!param6)
         {
            for each(_loc13_ in _loc10_)
            {
               if(_loc13_.§;!g§ == "CategoryBirds")
               {
                  _loc14_ = §%y§.§1[§.characters.§2f§(_loc13_.§3!9§);
                  param6 = new §2"L§(_loc14_);
               }
            }
         }
         _loc11_.§2!B§(param6,100,170 + param7,true);
         _loc12_ = new BitmapData(param3 + _loc8_,param3 + _loc8_ + param7,true,16777215);
         if(param6)
         {
            if(param4)
            {
               param6.§<"2§();
            }
            for each(_loc15_ in _loc10_)
            {
               if(_loc15_.§;!g§ != "CategoryBirds" && _loc15_.§;!g§ != "CategoryBackgrounds")
               {
                  param6.§&"&§(_loc15_);
               }
               if(_loc15_.§;!g§ == "CategoryBackgrounds")
               {
                  param6.§,d§(_loc15_.§3!9§);
               }
            }
            if(param5)
            {
               param6.§&E§().gotoAndStop(param5);
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
