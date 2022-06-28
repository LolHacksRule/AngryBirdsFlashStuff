package §^c§
{
   import §&=§.§#!5§;
   import §&=§.Item;
   import §8!P§.§5!n§;
   import §8!P§.§@!=§;
   import §;!q§.§^!#§;
   import §<z§.§`G§;
   import §@_§.§!T§;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class §=o§ implements §^!#§
   {
       
      
      private var §8!>§:Array;
      
      private var §[!?§:Boolean = false;
      
      public function §=o§()
      {
         this.§8!>§ = [];
         super();
      }
      
      public function §<r§() : void
      {
         var object:Object = null;
         this.§[!?§ = true;
         for each(object in this.§8!>§)
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
      
      public function §?k§() : void
      {
         this.§[!?§ = true;
      }
      
      public function render(param1:String, param2:Function, param3:int = 50, param4:Boolean = false) : BitmapData
      {
         var _loc5_:Sprite = null;
         var _loc6_:§+-§ = null;
         var _loc7_:Array = null;
         var _loc8_:§#!5§ = null;
         var _loc9_:Array = null;
         var _loc10_:§5!n§ = null;
         var _loc11_:§@!=§ = null;
         var _loc12_:Item = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:BitmapData = null;
         var _loc16_:§@!=§ = null;
         var _loc17_:Item = null;
         var _loc18_:Matrix = null;
         if(!this.§[!?§)
         {
            this.§8!>§.push({
               "avatarString":param1,
               "callBack":param2,
               "imageSize":param3,
               "ignoreBackground":param4
            });
            return null;
         }
         _loc5_ = new Sprite();
         _loc6_ = new §+-§();
         _loc7_ = [];
         for each(_loc8_ in §+-§.§3!§().characters)
         {
            _loc16_ = new §@!=§(_loc8_);
            _loc7_.push(_loc16_);
         }
         _loc9_ = §`G§.§@Q§(param1);
         _loc10_ = new §5!n§();
         _loc5_.addChild(_loc10_);
         for each(_loc12_ in _loc9_)
         {
            if(_loc12_.§5H§ == "CategoryBirds")
            {
               _loc11_ = _loc10_.§ r§(_loc12_.§49§,§!T§.§+g§,"CategoryBirds",_loc7_,100,170,true);
            }
         }
         if(param4)
         {
            _loc11_.§1!U§();
         }
         _loc13_ = param3 * 0.4;
         _loc14_ = param3 / 100 / 2;
         _loc15_ = new BitmapData(param3 + _loc13_,param3 + _loc13_,true,16777215);
         if(_loc11_)
         {
            for each(_loc17_ in _loc9_)
            {
               if(_loc17_.§5H§ != "CategoryBirds" && _loc17_.§5H§ != "CategoryBackgrounds")
               {
                  _loc11_.§%D§(_loc17_);
               }
               if(_loc17_.§5H§ == "CategoryBackgrounds")
               {
                  _loc11_.§<d§(_loc17_.§49§);
               }
            }
            (_loc18_ = new Matrix()).scale(_loc14_,_loc14_);
            _loc18_.translate(_loc13_ / 2,_loc13_ / 2);
            _loc15_.draw(_loc10_,_loc18_,null,null,null,true);
         }
         if(param2 != null)
         {
            param2(_loc15_);
         }
         return _loc15_;
      }
   }
}
