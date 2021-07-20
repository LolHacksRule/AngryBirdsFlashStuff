package §;#§
{
   import §"+§.§6" §;
   import §#!c§.§!I§;
   import §#!c§.§#!Z§;
   import §#!o§.§5#§;
   import §#!o§.Item;
   import §0!B§.§%9§;
   import §^`§.§;!D§;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class §&L§ implements §;!D§
   {
       
      
      private var §6?§:Array;
      
      private var §]!E§:Boolean = false;
      
      public function §&L§()
      {
         this.§6?§ = [];
         super();
      }
      
      public function §2§() : void
      {
         var object:Object = null;
         this.§]!E§ = true;
         for each(object in this.§6?§)
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
      
      public function §50§() : void
      {
         this.§]!E§ = true;
      }
      
      public function render(param1:String, param2:Function, param3:int = 50, param4:Boolean = false) : BitmapData
      {
         var _loc5_:Sprite = null;
         var _loc6_:§;?§ = null;
         var _loc7_:Array = null;
         var _loc8_:§5#§ = null;
         var _loc9_:Array = null;
         var _loc10_:§#!Z§ = null;
         var _loc11_:§!I§ = null;
         var _loc12_:Item = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:BitmapData = null;
         var _loc16_:§!I§ = null;
         var _loc17_:Item = null;
         var _loc18_:Matrix = null;
         if(!this.§]!E§)
         {
            this.§6?§.push({
               "avatarString":param1,
               "callBack":param2,
               "imageSize":param3,
               "ignoreBackground":param4
            });
            return null;
         }
         _loc5_ = new Sprite();
         _loc6_ = new §;?§();
         _loc7_ = [];
         for each(_loc8_ in §;?§.§6!V§().characters)
         {
            _loc16_ = new §!I§(_loc8_);
            _loc7_.push(_loc16_);
         }
         _loc9_ = §%9§.§62§(param1);
         _loc10_ = new §#!Z§();
         _loc5_.addChild(_loc10_);
         for each(_loc12_ in _loc9_)
         {
            if(_loc12_.§^w§ == "CategoryBirds")
            {
               _loc11_ = _loc10_.§+e§(_loc12_.§9!^§,§6" §.§0!C§,"CategoryBirds",_loc7_,100,170,true);
            }
         }
         if(param4)
         {
            _loc11_.§6Q§();
         }
         _loc13_ = param3 * 0.4;
         _loc14_ = param3 / 100 / 2;
         _loc15_ = new BitmapData(param3 + _loc13_,param3 + _loc13_,true,16777215);
         if(_loc11_)
         {
            for each(_loc17_ in _loc9_)
            {
               if(_loc17_.§^w§ != "CategoryBirds" && _loc17_.§^w§ != "CategoryBackgrounds")
               {
                  _loc11_.§'<§(_loc17_);
               }
               if(_loc17_.§^w§ == "CategoryBackgrounds")
               {
                  _loc11_.§3!p§(_loc17_.§9!^§);
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
